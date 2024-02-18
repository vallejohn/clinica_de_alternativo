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
  final _productTypeController = TextEditingController();
  final _addProductTypeController = TextEditingController();
  final _descriptionController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductsBloc>.value(
      value: BlocProvider.of<ProductsBloc>(context)..add(ProductsEvent.onSetSelectedProduct(widget.product)),
      child: MultiBlocListener(
        listeners: [
          BlocListener<ProductsBloc, ProductsState>(
            listenWhen: (prev, cur) => cur.status == ProductStatus.failed,
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message), backgroundColor: Colors.red,));
            },
          ),
          BlocListener<ProductsBloc, ProductsState>(
            listenWhen: (prev, cur) => prev.selectedProduct != cur.selectedProduct,
            listener: (context, state) {
              _productNameController.text = state.selectedProduct!.name;
              _productTypeController.text = state.selectedProduct!.type == null? '' : state.selectedProduct!.type!.name;
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (editing)
                        TextFormField(
                          controller: _productNameController,
                          validator: (value) => EmptyFieldValidator.dirty(value, errorMessage: 'Enter product name').error,
                          decoration: InputDecoration(
                            labelText: '${widget.product.type!.name} Products',
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
                        TextFormField(
                          controller: _productTypeController,
                          focusNode: FocusNode(),
                          validator: (value) => EmptyFieldValidator.dirty(value, errorMessage: 'Select product type').error,
                          enableInteractiveSelection: false,
                          onTap: ()async {
                            final prodType = await showDialog<ProductType>(
                                context: context,
                                builder: (BuildContext context) => const ProductTypeSelectionDialog()
                            );
                           if(prodContext.mounted) {
                             prodContext.read<ProductsBloc>()
                                .add(ProductsEvent.onSetSelectedProduct(
                                selectedProduct!.copyWith(
                                  type: prodType,
                                )));
                           }
                          },
                          decoration: const InputDecoration(
                            labelText: 'Type',
                          ),
                        ),
                      if (!editing && selectedProduct != null)
                        if(selectedProduct.type != null)
                          Text(
                            selectedProduct.type!.name,
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey),
                          ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (editing)
                        TextFormField(
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
                          if(_formKey.currentState!.validate()){
                            prodContext.read<ProductsBloc>().add(ProductsEvent.onDoneEditing(prodState.selectedProduct!.copyWith(
                              name: _productNameController.text,
                              description: _descriptionController.text,
                            )));
                          }
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
