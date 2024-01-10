part of 'pages.dart';

@RoutePage()
class AddProductsPage extends StatefulWidget {
  const AddProductsPage({super.key});

  @override
  State<AddProductsPage> createState() => _AddProductsPageState();
}

class _AddProductsPageState extends State<AddProductsPage> {
  final TextEditingController _productNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Add Products'),
      ),
      body: BlocProvider<ProductsBloc>(
        create: (_) => ProductsBloc()..add(const ProductsEvent.onFetchList()),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          physics: const BouncingScrollPhysics(),
          child: BlocBuilder<ProductsBloc, ProductsState>(
            builder: (prodContext, prodState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: _productNameController,
                    decoration: const InputDecoration(
                      labelText: 'Local Products',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FilledButton.tonal(
                    onPressed:() {
                      final product = Product(
                        name: _productNameController.text
                      );
                      prodContext.read<ProductsBloc>().add(ProductsEvent.onAdd(product));
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
                  const SizedBox(
                    height: 20,
                  ),
                  for( int i = 0; i < prodState.products.length; i++)
                    ListTile(
                      title: Text(prodState.products[i].name),
                    )
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
