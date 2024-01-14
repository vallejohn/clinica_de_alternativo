part of 'pages.dart';

@RoutePage()
class ProductDetailsPage extends StatefulWidget {
  final Product product;
  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  final _productNameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductsBloc>.value(
      value: BlocProvider.of<ProductsBloc>(context)..add(ProductsEvent.onSetSelectedProduct(widget.product)),
      child: MultiBlocListener(
        listeners: [
          BlocListener<ProductsBloc, ProductsState>(
            listenWhen: (prev, cur) => prev.selectedProduct != cur.selectedProduct,
            listener: (context, state) {
              _productNameController.text = state.selectedProduct!.name;
              _descriptionController.text = state.selectedProduct!.description;
            },
          ),
        ],
        child: BlocBuilder<ProductsBloc, ProductsState>(builder: (prodContext, prodState) {
          final editing = prodState.editing;
          final selectedProduct = prodState.selectedProduct;

          return Scaffold(
            appBar: AppBar(),
            body: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (editing)
                      TextField(
                        controller: _productNameController,
                        decoration: const InputDecoration(
                          labelText: 'Local Products',
                        ),
                      ),
                    if (!editing && selectedProduct != null)
                      Text(
                       prodState.selectedProduct!.name,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                    if (editing)
                      TextField(
                        maxLines: 8,
                        controller: _descriptionController,
                        decoration: const InputDecoration(
                          labelText: 'Description',
                        ),
                      ),
                    if (!editing && selectedProduct != null)
                      Text(
                        prodState.selectedProduct!.description,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                  ],
                ),
              ),
            ),
            floatingActionButton: editing
                ? null
                : FloatingActionButton(
                    elevation: 0,
                    child: const Icon(Ionicons.add),
                    onPressed: () {
                      AutoRouter.of(context).push(const AddProductRoute());
                    },
                  ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
            bottomNavigationBar: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 80,
              child: BottomAppBar(
                color: Theme.of(context).colorScheme.surfaceVariant,
                elevation: 0,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      tooltip: editing ? 'Cancel' : 'Delete',
                      icon: Icon(editing ? Ionicons.close_outline : Ionicons.trash_outline),
                      onPressed: () {
                        if (editing) {
                          prodContext.read<ProductsBloc>().add(const ProductsEvent.onCancelEditing());
                        } else {
                          //TODO delete product
                          prodContext.read<ProductsBloc>().add(const ProductsEvent.onDeleteSelectedProduct());
                        }
                      },
                    ),
                    IconButton(
                      tooltip: editing ? 'Update' : 'Edit',
                      icon: Icon(editing ? Ionicons.checkmark : Ionicons.create_outline),
                      onPressed: () {
                        if (editing) {
                          prodContext.read<ProductsBloc>().add(ProductsEvent.onDoneEditing(prodState.selectedProduct!.copyWith(
                                name: _productNameController.text,
                                description: _descriptionController.text,
                              )));
                        } else {
                          prodContext.read<ProductsBloc>().add(const ProductsEvent.onEdit());
                        }
                      },
                    ),
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
