part of 'pages.dart';

@RoutePage()
class SaleReportingPage extends StatefulWidget {
  const SaleReportingPage({super.key});

  @override
  State<SaleReportingPage> createState() => _SaleReportingPageState();
}

class _SaleReportingPageState extends State<SaleReportingPage> {
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController(text: DateFormat.yMd().format(DateTime.now()));
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    final branchState = context.watch<AccountBloc>().state;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Sales Reporting'),
             Text(branchState.status == AccountStatus.loading || branchState.status == AccountStatus.initial? '...' : '${branchState.profile?.branch?.name} - ${branchState.profile?.branch?.type!.name.toUpperCase()}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: (){

          }, child: Row(
            children: [
              if(branchState.status == AccountStatus.success) Text(branchState.profile!.name, style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(width: 10,),
              const Icon(Ionicons.person_outline),
            ],
          ))
        ],
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<SearchProductCubit, SearchProductState>(
            listenWhen: (prev, cur) => cur.selectedProduct != null,
            listener: (context, state) {
              _productNameController.text = state.selectedProduct!.name;
            },
          ),
        ],
        child: BlocBuilder<SalesReportingBloc, SalesReportingState>(builder: (srContext, srState) {
          bool loading = srState.status == SalesReportingStatus.loading;
          bool loadingList = srState.status == SalesReportingStatus.loadingReportsList;
          return Form(
            key: _formKey,
            child: lazy_scroll.LazyLoadScrollView(
              isLoading: srState.loadingMoreItems,
              onEndOfPage: () {
                context.read<SalesReportingBloc>().add(SalesReportingEvent.onFetchReport(paginateFromLastDoc: srState.salesReportDocs!.paginate!.lastVisibleDocument, branch: branchState.profile?.branch));
              },
              child: Scrollbar(
                radius: const Radius.circular(8),
                child: ListView(
                  physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  padding: const EdgeInsets.all(20),
                  children: [
                    BlocProvider<WidgetHelperCubit<DateTime?>>(
                      create: (_) => WidgetHelperCubit<DateTime?>(DateTime.now()),
                      child: BlocListener<WidgetHelperCubit<DateTime?>, DateTime?>(
                        listenWhen: (prev, cur) => cur != null,
                        listener: (BuildContext dateContext, DateTime? dateState) {
                          _dateController.text = DateFormat.yMd().format(dateState?? DateTime.now());
                        },
                        child: BlocBuilder<WidgetHelperCubit<DateTime?>, DateTime?>(
                          builder: (dateContext, dateState) {
                            return TextFormField(
                              controller: _dateController,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                labelText: 'Date',
                                hintText: 'mm/dd/yyyy',
                                suffixIcon: IconButton(onPressed: ()async {
                                  final selectedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2024),
                                    lastDate: DateTime(DateTime.now().year + 2),
                                  );
                                  if(dateContext.mounted) dateContext.read<WidgetHelperCubit<DateTime?>>().onUpdateState(selectedDate);
                                }, icon: const Icon(Ionicons.calendar_outline))
                              ),
                              validator: (value){
                                if(value != null){
                                  if(value.isEmpty) return 'Enter date';
                                  if(value.isNotEmpty){
                                    DateTime? parsedDate;
                                    try{
                                      parsedDate = DateFormat('M/d/yyyy').parse(value);
                                    }catch(e){
                                      parsedDate = null;
                                    }

                                    if(parsedDate == null){
                                      return 'Invalid format';
                                    }else{
                                      final year = value.split('/');
                                      if(year.last.length != 4) return 'Invalid format';
                                    }
                                  }
                                  return null;
                                }else{
                                  return 'Enter date';
                                }
                              },
                            );
                          }
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BlocBuilder<SearchProductCubit, SearchProductState>(
                      builder: (context, state) {
                        String productLabelType = '';

                        if(state.selectedProduct != null){
                          if(state.selectedProduct!.type != null){
                            productLabelType = state.selectedProduct!.type!.name;
                          }
                        }
                        return TextFormField(
                          focusNode: FocusNode(),
                          enableInteractiveSelection: false,
                          onTap: () {
                            AutoRouter.of(context).push(const SearchProductsRoute());
                          },
                          controller: _productNameController,
                          decoration: InputDecoration(
                            labelText: '$productLabelType Product',
                          ),
                          validator: (value){
                            if(value != null){
                              if(value.isEmpty) return 'Enter product name';
                              return null;
                            }else{
                              return 'Enter product name';
                            }
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: _quantityController,
                            decoration: const InputDecoration(
                              labelText: 'Quantity Sold (pcs.)',
                            ),
                            validator: (value){
                              if(value != null){
                                if(value.isEmpty) return 'Enter quantity';
                                return null;
                              }else{
                                return 'Enter quantity';
                              }
                            },
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: _priceController,
                            decoration: const InputDecoration(
                              labelText: 'Price per piece',
                            ),
                            validator: (value){
                              if(value != null){
                                if(value.isEmpty) return 'Enter price';
                                if(double.parse(value.toString()) == 0){
                                  return 'Enter price above zero';
                                }
                                return null;
                              }else{
                                return 'Enter quantity';
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: FilledButton(
                        onPressed: loading
                            ? null
                            : () {
                          if(_formKey.currentState!.validate()){
                            final salesReport = SalesReport(
                              product: context.read<SearchProductCubit>().state.selectedProduct?.copyWith(price: double.parse(_priceController.text)),
                              quantitySold: int.parse(_quantityController.text),
                              transactionDate: DateFormat('M/d/yyyy').parse(_dateController.text),
                              reportedBy: context.read<AccountBloc>().state.profile
                            );
                            srContext.read<SalesReportingBloc>().add(SalesReportingEvent.onSendReport(salesReport));
                          }
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (!loading) const Icon(Icons.send, size: 17),
                            if (loading)
                              SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: Theme.of(context).disabledColor,
                                  )),
                            const SizedBox(width: 15),
                            Text(loading ? 'Sending report...' : 'Send report'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    if(srState.salesReportDocs != null)
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Total sales', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).dividerColor, fontWeight: FontWeight.w600),),
                              const SizedBox(height: 8,),
                              Text('P ${(srState.salesReportDocs!.salesReports.fold<double>(0, (value, element) => value + (element.product!.price * element.quantitySold))).toPeso()}', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.primary),),
                              const SizedBox(height: 8,),
                              Text(DateFormat.yMMMMd().format(DateTime.now()), style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).dividerColor),),
                            ],
                          ),
                        ),
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                    if (loadingList) const LinearProgressIndicator(),
                    if (!loadingList)
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: DataTable(
                          sortAscending: true,
                          columns: const <DataColumn>[
                            DataColumn(
                              label: Expanded(
                                child: Text(
                                  'Product',
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Expanded(
                                child: Text(
                                  'Quantity',
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Expanded(
                                child: Text(
                                  'Total',
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                          ],
                          rows: <DataRow>[
                            if(srState.salesReportDocs != null)
                              for (int i = 0; i < srState.salesReportDocs!.salesReports.length; i++)
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(srState.salesReportDocs!.salesReports[i].product!.name),
                                        Text('P ${srState.salesReportDocs!.salesReports[i].product!.price.toPeso()}',
                                          style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey, fontStyle: FontStyle.italic),
                                        ),
                                      ],
                                    )),
                                    DataCell(Text(srState.salesReportDocs!.salesReports[i].quantitySold.toString())),
                                    DataCell(
                                      Text('P ${(srState.salesReportDocs!.salesReports[i].product!.price * srState.salesReportDocs!.salesReports[i].quantitySold).toPeso()}',
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.primary),
                                      ),
                                    ),
                                  ],
                                ),
                          ],
                        ),
                      ),
                    if(srState.loadingMoreItems)
                      const Center(child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Loading more items...'),
                            SizedBox(width: 10,),
                            SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2,)),
                          ],
                        ),
                      ))
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
