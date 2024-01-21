part of 'pages.dart';

@RoutePage()
class SaleReportingPage extends StatefulWidget {
  const SaleReportingPage({super.key});

  @override
  State<SaleReportingPage> createState() => _SaleReportingPageState();
}

class _SaleReportingPageState extends State<SaleReportingPage> {
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sales Reporting', style: Theme.of(context).textTheme.headlineLarge,),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        child: BlocProvider<SalesReportingBloc>(
          create: (_) => SalesReportingBloc()..add(const SalesReportingEvent.onFetchReport()),
          child: MultiBlocListener(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormField(
                      focusNode: FocusNode(),
                      enableInteractiveSelection: false,
                      onTap: () {
                        AutoRouter.of(context).push(const SearchProductsRoute());
                      },
                      controller: _productNameController,
                      decoration: const InputDecoration(
                        labelText: 'Local Product',
                      ),
                      validator: (value){
                        if(value != null){
                          if(value.isEmpty) return 'Enter product name';
                          return null;
                        }else{
                          return 'Enter product name';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
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
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        /*Expanded(
                          child: FilledButton.tonal(
                            onPressed: () {
                              AutoRouter.of(context).push(const AddProductsRoute());
                            },
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.add, size: 17),
                                SizedBox(width: 15),
                                Text('Add products'),
                              ],
                            ),
                          ),
                        ),*/
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: FilledButton(
                            onPressed: loading
                                ? null
                                : () {
                                    if(_formKey.currentState!.validate()){
                                      final salesReport = SalesReport(
                                        transactionId: 'TXN0034',
                                        product: context.read<SearchProductCubit>().state.selectedProduct,
                                        quantitySold: int.parse(_quantityController.text),
                                        transactionDate: DateTime.now().toString(),
                                      );
                                      srContext.read<SalesReportingBloc>().add(SalesReportingEvent.onSendReport(salesReport));
                                    }
                                  },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (!loading) const Icon(Icons.send, size: 17),
                                const SizedBox(width: 15),
                                Text(loading ? 'Sending report...' : 'Send report'),
                                if (loading)
                                  SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        color: Theme.of(context).disabledColor,
                                      )),
                              ],
                            ),
                          ),
                        ),
                      ],
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
                                  'Date',
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
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
                          ],
                          rows: <DataRow>[
                            for (int i = 0; i < srState.salesReports.length; i++)
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(
                                    Text(DateFormat.yMd().format(DateTime.parse(srState.salesReports[i].transactionDate))),
                                  ),
                                  DataCell(Text(srState.salesReports[i].product!.name)),
                                  DataCell(Text(srState.salesReports[i].quantitySold.toString())),
                                ],
                              ),
                          ],
                        ),
                      )
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
