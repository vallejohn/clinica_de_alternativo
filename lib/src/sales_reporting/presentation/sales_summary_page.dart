part of 'pages.dart';

@RoutePage()
class SalesSummaryPage extends StatefulWidget {
  const SalesSummaryPage({super.key});

  @override
  State<SalesSummaryPage> createState() => _SalesSummaryPageState();
}

class _SalesSummaryPageState extends State<SalesSummaryPage> {
  final TextEditingController _dateController = TextEditingController(text: DateFormat.yMd().format(DateTime.now()));

  final _productListCubit = WidgetHelperCubit<List<Product>>([]);
  final _productTypeListCubit = WidgetHelperCubit<List<ProductType>>([]);
  final _branchListCubit = WidgetHelperCubit<List<Branch>>([]);
  final _dateTimeRangeCubit = WidgetHelperCubit<DateTimeRange?>(DateTimeRange(start: DateTime.now(), end: DateTime.now()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sales',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: BlocProvider<SalesReportGeneratorBloc>.value(
        value: BlocProvider.of<SalesReportGeneratorBloc>(context),
        child: BlocBuilder<SalesReportGeneratorBloc, SalesReportGeneratorState>(
          builder: (genContext, genState) {

            final loading = genState.status == SalesGeneratorStatus.loading;

            return lazy_scroll.LazyLoadScrollView(
              isLoading: genState.loadingMoreItems,
              onEndOfPage: (){
                genContext.read<SalesReportGeneratorBloc>().add(SalesReportGeneratorEvent.onGenerateReport(FetchSalesReportsParam(
                    salesReportingFilterParam: SalesReportingFilterParam(
                        dateTimeRange: _dateTimeRangeCubit.state!,
                        products: _productListCubit.state,
                        productTypes: _productTypeListCubit.state
                    ),
                    paginate: genState.salesReportDocs!.paginate!
                )));
              },
              child: Scrollbar(
                radius: const Radius.circular(8),
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  physics: const BouncingScrollPhysics(),
                  children: [
                    BlocProvider<WidgetHelperCubit<DateTimeRange?>>(
                      create: (_) => _dateTimeRangeCubit,
                      child: BlocListener<WidgetHelperCubit<DateTimeRange?>, DateTimeRange?>(
                        bloc: _dateTimeRangeCubit,
                        listenWhen: (prev, cur) => cur != null,
                        listener: (BuildContext dateContext, DateTimeRange? dateState) {
                          _dateController.text = '${DateFormat('MMM d, yyy').format(dateState!.start)} - ${DateFormat('MMM d, yyy').format(dateState.end)}';
                        },
                        child: BlocBuilder<WidgetHelperCubit<DateTimeRange?>, DateTimeRange?>(
                            bloc: _dateTimeRangeCubit,
                            builder: (dateContext, dateState) {
                              return TextFormField(
                                controller: _dateController,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                focusNode: FocusNode(),
                                enableInteractiveSelection: false,
                                onTap: ()async {
                                  final selectedDate = await showDateRangePicker(
                                    context: context,
                                    firstDate: DateTime(2024),
                                    lastDate: DateTime(DateTime.now().year + 2),
                                  );
                                  if(dateContext.mounted) _dateTimeRangeCubit.onUpdateState(selectedDate);
                                },
                                decoration: const InputDecoration(
                                    labelText: 'Date range',
                                    hintText: 'mm/dd/yyyy',
                                    suffixIcon:  Icon(Ionicons.calendar_outline)
                                ),
                              );
                            }
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    BlocProvider<WidgetHelperCubit<bool>>(
                      create: (_) => WidgetHelperCubit<bool>(false),
                      child: BlocBuilder<WidgetHelperCubit<bool>, bool>(
                        builder: (locContext, visible) {
                          return Card(
                            margin: EdgeInsets.zero,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextButton(
                                    onPressed: (){
                                      locContext.read<WidgetHelperCubit<bool>>().onUpdateState(!visible);
                                    },
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Select products', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),),
                                            Text('Expand to see products list', style: Theme.of(context).textTheme.bodyMedium,),
                                          ],
                                        ),
                                        const Spacer(),
                                        Icon(!visible? Ionicons.caret_down_outline : Ionicons.caret_up_outline)
                                      ],
                                    ),
                                  ),
                                  AnimatedSize(
                                    duration: const Duration(milliseconds: 200),
                                      child: BlocProvider<WidgetHelperCubit<List<Product>>>(
                                        create: (_) => _productListCubit,
                                        child: BlocBuilder<WidgetHelperCubit<List<Product>>, List<Product>>(
                                          bloc: _productListCubit,
                                          builder: (_, productList) {
                                            return Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                if(visible) const SizedBox(height: 16,),
                                                if(visible)
                                                ...context.read<ProductsBloc>().state.products.map((e) {
                                                  return Row(
                                                    children: [
                                                      Checkbox(
                                                        value: productList.where((element) => element.id == e.id).isNotEmpty,
                                                        onChanged: (bool? value) {
                                                          final newList = [...productList];
                                                          if(newList.contains(e)){
                                                            newList.remove(e);
                                                          }else{
                                                            newList.add(e);
                                                          }
                                                          appLogger.w(newList.length);
                                                          _productListCubit.onUpdateState(newList);
                                                        },
                                                      ),
                                                      Text(e.name, style: Theme.of(context).textTheme.bodyMedium,),
                                                    ],
                                                  );
                                                }).toList()
                                              ],
                                            );
                                          }
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          );
                        }
                      ),
                    ),
                    const SizedBox(height: 10,),
                    BlocProvider<WidgetHelperCubit<bool>>(
                      create: (_) => WidgetHelperCubit<bool>(false),
                      child: BlocBuilder<WidgetHelperCubit<bool>, bool>(
                          builder: (locContext, visible) {
                            return Card(
                              margin: EdgeInsets.zero,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: (){
                                        locContext.read<WidgetHelperCubit<bool>>().onUpdateState(!visible);
                                      },
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Select product type', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),),
                                              Text('Expand to see products types', style: Theme.of(context).textTheme.bodyMedium,),
                                            ],
                                          ),
                                          const Spacer(),
                                          Icon(!visible? Ionicons.caret_down_outline : Ionicons.caret_up_outline)
                                        ],
                                      ),
                                    ),
                                    AnimatedSize(
                                      duration: const Duration(milliseconds: 200),
                                      child: BlocProvider<WidgetHelperCubit<List<ProductType>>>(
                                        create: (_) => _productTypeListCubit,
                                        child: BlocBuilder<WidgetHelperCubit<List<ProductType>>, List<ProductType>>(
                                            bloc: _productTypeListCubit,
                                            builder: (_, productTypeList) {
                                              return Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  if(visible) const SizedBox(height: 16,),
                                                  if(visible)
                                                    ...context.read<ProductTypeBloc>().state.productTypes.map((e) {
                                                      return Row(
                                                        children: [
                                                          Checkbox(
                                                            value: productTypeList.where((element) => element.id == e.id).isNotEmpty,
                                                            onChanged: (bool? value) {
                                                              final newList = [...productTypeList];
                                                              if(newList.contains(e)){
                                                                newList.remove(e);
                                                              }else{
                                                                newList.add(e);
                                                              }
                                                              appLogger.w(newList.length);
                                                              _productTypeListCubit.onUpdateState(newList);
                                                            },
                                                          ),
                                                          Text(e.name, style: Theme.of(context).textTheme.bodyMedium,),
                                                        ],
                                                      );
                                                    }).toList()
                                                ],
                                              );
                                            }
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                    const SizedBox(height: 10,),
                    BlocProvider<WidgetHelperCubit<bool>>(
                      create: (_) => WidgetHelperCubit<bool>(false),
                      child: BlocBuilder<WidgetHelperCubit<bool>, bool>(
                          builder: (locContext, visible) {
                            return Card(
                              margin: EdgeInsets.zero,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: (){
                                        locContext.read<WidgetHelperCubit<bool>>().onUpdateState(!visible);
                                      },
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Select clinic area', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),),
                                              Text('Expand to see clinic areas', style: Theme.of(context).textTheme.bodyMedium,),
                                            ],
                                          ),
                                          const Spacer(),
                                          Icon(!visible? Ionicons.caret_down_outline : Ionicons.caret_up_outline)
                                        ],
                                      ),
                                    ),
                                    AnimatedSize(
                                      duration: const Duration(milliseconds: 200),
                                      child: BlocProvider<WidgetHelperCubit<List<Branch>>>(
                                        create: (_) => _branchListCubit,
                                        child: BlocBuilder<WidgetHelperCubit<List<Branch>>, List<Branch>>(
                                            bloc: _branchListCubit,
                                            builder: (_, branchList) {
                                              return Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  if(visible) const SizedBox(height: 16,),
                                                  if(visible)
                                                    ...context.read<BranchBloc>().state.branches.map((e) {
                                                      return Row(
                                                        children: [
                                                          Checkbox(
                                                            value: branchList.where((element) => element.id == e.id).isNotEmpty,
                                                            onChanged: (bool? value) {
                                                              final newList = [...branchList];
                                                              if(newList.contains(e)){
                                                                newList.remove(e);
                                                              }else{
                                                                newList.add(e);
                                                              }
                                                              appLogger.w(newList.length);
                                                              _branchListCubit.onUpdateState(newList);
                                                            },
                                                          ),
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text(e.name, style: Theme.of(context).textTheme.bodyMedium,),
                                                              Text(e.type == null? 'NA' : e.type!.name.toUpperCase(), style: Theme.of(context).textTheme.bodySmall,),
                                                            ],
                                                          ),
                                                        ],
                                                      );
                                                    }).toList()
                                                ],
                                              );
                                            }
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(onPressed: loading? null : (){
                        genContext.read<SalesReportGeneratorBloc>().add(SalesReportGeneratorEvent.onGenerateReport(FetchSalesReportsParam(
                            salesReportingFilterParam: SalesReportingFilterParam(
                                dateTimeRange: _dateTimeRangeCubit.state!,
                                products: _productListCubit.state,
                                productTypes: _productTypeListCubit.state,
                                branches: _branchListCubit.state,
                            ),
                        )));
                      }, child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (!loading) const Icon(Ionicons.document_text_outline, size: 17),
                          if (loading)
                            SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Theme.of(context).disabledColor,
                                )),
                          const SizedBox(width: 15),
                          Text(loading ? 'Generating report...' : 'Generate report'),
                        ],
                      ),),
                    ),
                    const SizedBox(height: 20,),
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
                          if(genState.salesReportDocs != null)
                            for (int i = 0; i < genState.salesReportDocs!.salesReports.length; i++)
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(genState.salesReportDocs!.salesReports[i].product!.name,),
                                      Text(DateFormat('MMM d, yyy').format((genState.salesReportDocs!.salesReports[i].transactionDate as Timestamp).toDate()),
                                        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey, fontStyle: FontStyle.italic),
                                      ),
                                    ],
                                  )),
                                  DataCell(Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(genState.salesReportDocs!.salesReports[i].quantitySold.toString()),
                                      Text('P ${genState.salesReportDocs!.salesReports[i].product!.price.toPeso()}',
                                        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey, fontStyle: FontStyle.italic),
                                      ),
                                    ],
                                  )),
                                  DataCell(
                                    Text('P ${(genState.salesReportDocs!.salesReports[i].product!.price * genState.salesReportDocs!.salesReports[i].quantitySold).toPeso()}',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.primary),
                                    ),
                                  ),
                                ],
                              ),
                        ],
                      ),
                    ),
                    if(genState.loadingMoreItems)
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
            );
          }
        ),
      ),
    );
  }
}
