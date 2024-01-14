part of 'pages.dart';

@RoutePage()
class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final _productNameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductsBloc>.value(
      value: BlocProvider.of<ProductsBloc>(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add product'),
        ),
        body: BlocBuilder<ProductsBloc, ProductsState>(
          builder: (prodContext, prodState) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  TextField(
                    controller: _productNameController,
                    decoration: const InputDecoration(
                      labelText: 'Local Products',
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextField(
                    maxLines: 8,
                    controller: _descriptionController,
                    decoration: const InputDecoration(
                      labelText: 'Description',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: FilledButton.tonal(
                          onPressed: () {
                            AutoRouter.of(context).pop();
                          },
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Ionicons.close_outline, size: 17),
                              SizedBox(width: 15),
                              Text('Cancel'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: FilledButton(
                          onPressed: () {
                            final product = Product(
                              name: _productNameController.text,
                              description: _descriptionController.text,
                            );
                            prodContext.read<ProductsBloc>().add(ProductsEvent.onAdd(product));
                          },
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Ionicons.add, size: 17),
                              SizedBox(width: 15),
                              Text('Add product'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
