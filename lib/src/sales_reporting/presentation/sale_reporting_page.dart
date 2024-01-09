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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Sales Reporting'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        child: BlocProvider<SalesReportingBloc>(
          create: (_) => SalesReportingBloc(),
          child: BlocBuilder<SalesReportingBloc, SalesReportingState>(
            builder: (srContext, srState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: _productNameController,
                    decoration: const InputDecoration(
                      labelText: 'Local Product',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: _quantityController,
                    decoration: const InputDecoration(
                      labelText: 'Quantity Sold (pcs.)',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FilledButton(
                    onPressed: () {
                      final salesReport = SalesReport(
                        transactionId: 'TXN0034',
                        productName: _productNameController.text,
                        quantitySold: double.parse(_quantityController.text),
                      );
                      srContext.read<SalesReportingBloc>().add(SalesReportingEvent.onSendReport(salesReport));
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Send report'),
                        SizedBox(width: 15),
                        Icon(Icons.send, size: 17),
                      ],
                    ),
                  ),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
