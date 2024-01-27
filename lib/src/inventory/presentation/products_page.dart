part of 'pages.dart';

@RoutePage()
class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final TextEditingController _productNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products', style: Theme.of(context).textTheme.headlineLarge,),
      ),
      body: BlocProvider<ProductsBloc>.value(
        value: BlocProvider.of<ProductsBloc>(context)..add(const ProductsEvent.onFetchList()),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: BlocBuilder<ProductsBloc, ProductsState>(
            builder: (prodContext, prodState) {
              final products = prodState.products;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  /*TextField(
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
                  ),*/
                  const SizedBox(
                    height: 20,
                  ),
                  for( int i = 0; i < products.length; i++)
                    ListTileItem(
                      leadingIcon: CircleAvatar(child: Text(products[i].name[0], style: TextStyle(color: Theme.of(context).colorScheme.primary),),),
                      title: Text(products[i].name),
                      subtitle: products[i].type == null? null : products[i].type!.name,
                      onPressed: (){
                        AutoRouter.of(context).push(ProductDetailsRoute(product: products[i]));
                      },
                    )
                ],
              );
            }
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => AutoRouter.of(context).push(const AddProductRoute()),
        label: const Text('Add product'),
        icon: const Icon(Ionicons.add),
      ),
    );
  }
}
