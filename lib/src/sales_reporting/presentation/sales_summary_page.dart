part of 'pages.dart';

@RoutePage()
class SalesSummaryPage extends StatefulWidget {
  const SalesSummaryPage({super.key});

  @override
  State<SalesSummaryPage> createState() => _SalesSummaryPageState();
}

class _SalesSummaryPageState extends State<SalesSummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sales',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(Ionicons.calendar_outline),
                        SizedBox(
                          width: 10,
                        ),
                        Text('From')
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Icon(Ionicons.arrow_forward_outline, color: Theme.of(context).colorScheme.primary,),
                const SizedBox(width: 10,),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(Ionicons.calendar_outline),
                        SizedBox(
                          width: 10,
                        ),
                        Text('To')
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            TextFormField(
              focusNode: FocusNode(),
              enableInteractiveSelection: false,
              onTap: () {

              },
              //controller: _productNameController,
              decoration: const InputDecoration(
                labelText: 'Clinic/Area',
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
          ],
        ),
      ),
    );
  }
}
