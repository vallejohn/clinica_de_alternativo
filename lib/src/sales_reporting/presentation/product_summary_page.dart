part of 'pages.dart';

@RoutePage()
class ProductSummaryPage extends StatelessWidget {
  final List<SalesReport> salesReports;
  final String date;
  const ProductSummaryPage({super.key, required this.salesReports, required this.date});

  Map<String, List<SalesReport>> _groupSalesByName(List<SalesReport> sales) {
    Map<String, List<SalesReport>> groups = sales.groupListsBy((item) => item.product!.name);
    return groups;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Product Sales Summary'),
            Text(date, style: Theme.of(context).textTheme.bodySmall,),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            ..._groupSalesByName(salesReports).entries.map((e) {
              Map<double, List<SalesReport>> groups = e.value.groupListsBy((item) => item.product!.price);

              final totalSales = groups.values.fold<double>(0, (previousValue, reports) =>
                      previousValue + (reports.fold<double>(0, (previousValue, report) =>
                        previousValue + (report.quantitySold * report.product!.price))));

              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.key,
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),
                              ),
                              const Spacer(),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'P ${totalSales.toPeso()}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'Sub-Total',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(color: Theme.of(context).colorScheme.primary),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: DataTable(
                              sortAscending: true,
                              columns: const <DataColumn>[
                                DataColumn(
                                  label: Expanded(
                                    child: Text(
                                      '# Box/Pcs',
                                      style: TextStyle(fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Expanded(
                                    child: Text(
                                      'Price',
                                      style: TextStyle(fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Expanded(
                                    child: Text(
                                      'Amount',
                                      style: TextStyle(fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                              ],
                              rows: <DataRow>[
                                ...groups.entries.map((sr) {
                                  final qtySold = sr.value.fold<int>(0, (previousValue, element) => previousValue + element.quantitySold);
                                  final totalAmount = qtySold * sr.key;
                                  return DataRow(
                                    cells: <DataCell>[
                                      DataCell(
                                        Text(
                                          '$qtySold',
                                        ),
                                      ),
                                      DataCell(Text(
                                        'P ${sr.key.toPeso()}',
                                        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant,),
                                      )),
                                      DataCell(
                                        Text(
                                          'P ${totalAmount.toPeso()}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.primary),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}
