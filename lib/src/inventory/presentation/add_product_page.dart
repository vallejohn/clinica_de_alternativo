part of 'pages.dart';

@RoutePage()
class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final _productNameController = TextEditingController();
  final _productTypeController = TextEditingController();
  final _descriptionController = TextEditingController();

  final selectedProductCubit = WidgetHelperCubit<ProductType?>(const ProductType());

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsBloc>.value(
          value: BlocProvider.of<ProductsBloc>(context),
        )
      ],
      child: BlocListener<WidgetHelperCubit<ProductType?>, ProductType?>(
        bloc: selectedProductCubit,
        listenWhen: (prev, cur) => prev != cur,
        listener: (context, state) {
          _productTypeController.text = state == null? '' : state.name;
        }, child: Scaffold(
        appBar: AppBar(
          title: Text('Add product', style: Theme.of(context).textTheme.headlineLarge,),
        ),
        body: BlocConsumer<ProductsBloc, ProductsState>(
          listener: (context, state){
            if(state.status == ProductStatus.failed && state.errorCode == ErrorCode.permissionDenied){
              showDialog(context: context, builder: (context) => PermissionErrorDialog(message: state.message,));
            }

            if(state.status == ProductStatus.success){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
              Navigator.pop(context);
            }
          },
          builder: (prodContext, prodState) {
            final loading = prodState.status == ProductStatus.loading;
            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _productNameController,
                      validator: (value) => EmptyFieldValidator.dirty(value, errorMessage: 'Enter product name').error,
                      decoration: const InputDecoration(
                        labelText: 'Product name',
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      controller: _productTypeController,
                      focusNode: FocusNode(),
                      enableInteractiveSelection: false,
                      validator: (value) => EmptyFieldValidator.dirty(value, errorMessage: 'Select product type').error,
                      onTap: ()async {
                        final prodType = await showDialog<ProductType>(
                          context: context,
                          builder: (BuildContext context) => const ProductTypeSelectionDialog()
                        );
                        selectedProductCubit.onUpdateState(prodType);
                      },
                      decoration: const InputDecoration(
                        labelText: 'Type',
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
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
                            onPressed: loading? null : () {
                              if(_formKey.currentState!.validate()){
                                final product = Product(
                                    name: _productNameController.text,
                                    description: _descriptionController.text,
                                    type: selectedProductCubit.state
                                );
                                prodContext.read<ProductsBloc>().add(ProductsEvent.onAdd(product));
                              }
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (!loading) const Icon(Icons.send, size: 17),
                                if (loading)
                                  SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        color: Theme.of(context).disabledColor,
                                      )),
                                const SizedBox(width: 15),
                                Text(loading ? 'Add product...' : 'Add product'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
),
    );
  }
}
