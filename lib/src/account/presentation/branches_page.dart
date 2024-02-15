part of 'pages.dart';

@RoutePage()
class BranchesPage extends StatefulWidget {
  const BranchesPage({super.key});

  @override
  State<BranchesPage> createState() => _BranchesPageState();
}

class _BranchesPageState extends State<BranchesPage> {
  final _branchNameController = TextEditingController();

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
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: BlocProvider<WidgetHelperCubit<BranchType?>>(
                create: (context) => WidgetHelperCubit<BranchType?>(null),
                child: BlocBuilder<WidgetHelperCubit<BranchType?>, BranchType?>(
                    builder: (bTypeContext, bTypeState) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: TextField(
                            controller: _branchNameController,
                            decoration: InputDecoration(
                              labelText: 'Branch name',
                              suffixIcon: IconButton(onPressed: () {
                                context.read<BranchBloc>().add(BranchEvent.onAdd(Branch(name: _branchNameController.text, type: bTypeState)));
                                _branchNameController.clear();
                              }, icon: const Icon(Ionicons.add)),
                            ),
                          ),
                        ),
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
                        const Divider(),
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
