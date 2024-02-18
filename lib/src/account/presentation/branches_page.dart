part of 'pages.dart';

@RoutePage()
class BranchesPage extends StatefulWidget {
  const BranchesPage({super.key});

  @override
  State<BranchesPage> createState() => _BranchesPageState();
}

class _BranchesPageState extends State<BranchesPage> {
  final _branchNameController = TextEditingController();

  final _branchNameFieldState = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Branches', style: Theme
            .of(context)
            .textTheme
            .headlineLarge,),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<BranchBloc, BranchState>(
            listenWhen: (prev, cur) => cur.status == BranchStatus.failed,
            listener: (context, state) {
              showDialog(context: context, builder: (context) => PermissionErrorDialog(message: state.message,));
            },
          )
        ],
        child: BlocBuilder<BranchBloc, BranchState>(
          builder: (context, state) {
            final loading = state.status == BranchStatus.loading;
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: BlocProvider<WidgetHelperCubit<BranchType?>>(
                create: (context) => WidgetHelperCubit<BranchType?>(BranchType.clinic),
                child: BlocBuilder<WidgetHelperCubit<BranchType?>, BranchType?>(
                    builder: (bTypeContext, bTypeState) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 24,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: TextFormField(
                                  key: _branchNameFieldState,
                                  controller: _branchNameController,
                                  validator: (value) => EmptyFieldValidator.dirty(value, errorMessage: 'Enter branch name').error,
                                  decoration: InputDecoration(
                                    labelText: 'Branch name',
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Wrap(
                                  children: [
                                    ...BranchType.values.map((e) => Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Radio(
                                          value: e,
                                          groupValue: bTypeState,
                                          onChanged: (value){
                                            bTypeContext.read<WidgetHelperCubit<BranchType?>>().onUpdateState(value);
                                          },),
                                        Text(e.name.toUpperCase())
                                      ],
                                    ),
                                    ).toList()
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: FilledButton(onPressed: loading? null : (){
                                    if(_branchNameFieldState.currentState!.validate()){
                                      context.read<BranchBloc>().add(BranchEvent.onAdd(Branch(name: _branchNameController.text, type: bTypeState)));
                                      _branchNameController.clear();
                                    }
                                  }, child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      if (!loading) const Icon(Ionicons.add, size: 17),
                                      if (loading)
                                        SizedBox(
                                            width: 20,
                                            height: 20,
                                            child: CircularProgressIndicator(
                                              strokeWidth: 2,
                                              color: Theme.of(context).disabledColor,
                                            )),
                                      const SizedBox(width: 15),
                                      Text(loading ? 'Creating branch...' : 'Add branch'),
                                    ],
                                  ),),
                                ),
                              ),
                              const SizedBox(height: 24,)
                            ],
                          ),
                        ),
                        const SizedBox(height: 10,),
                        ...state.branches.map((e) => ListTileItem(
                          leadingIcon: Icon(e.type == BranchType.warehouse? Ionicons.cube_outline : Ionicons.storefront_outline, color: Theme.of(context).colorScheme.primary,),
                          title: Text(e.name),
                          subtitle: e.type?.name.toUpperCase(),
                          onLongPress: (){

                          },
                        )).toList()
                      ],
                    );
                  }
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
