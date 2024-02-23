part of 'pages.dart';

@RoutePage()
class RolesPage extends StatefulWidget {
  const RolesPage({super.key});

  @override
  State<RolesPage> createState() => _RolesPageState();
}

class _RolesPageState extends State<RolesPage> {
  final _roleNameController = TextEditingController();
  final _moduleNameController = TextEditingController();

  final _roleNameFieldState = GlobalKey<FormFieldState>();
  final _moduleNameFieldState = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Roles and modules'),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<RoleBloc>.value(
            value: BlocProvider.of<RoleBloc>(context)..add(const RoleEvent.onFetch()),
          ),
          BlocProvider<ModuleBloc>.value(
            value: BlocProvider.of<ModuleBloc>(context)..add(const ModuleEvent.onFetch()),
          )
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<RoleBloc, RoleState>(
              listenWhen: (prev, cur) => cur.status == RoleStatus.failed,
              listener: (context, state) {
                if(state.errorCode == ErrorCode.permissionDenied){
                  showDialog(context: context, builder: (context) => PermissionErrorDialog(message: state.message,));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(
                    children: [
                      Icon(Ionicons.warning_outline, color: Colors.white,),
                      const SizedBox(width: 8,),
                      Text(state.message),
                    ],
                  ), backgroundColor: Theme.of(context).colorScheme.error,));
                }
              },
            ),
            BlocListener<ModuleBloc, ModuleState>(
              listenWhen: (prev, cur) => cur.status == ModuleStatus.failed,
              listener: (context, state) {
                if(state.errorCode == ErrorCode.permissionDenied){
                  showDialog(context: context, builder: (context) => PermissionErrorDialog(message: state.message,));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(
                    children: [
                      Icon(Ionicons.warning_outline, color: Colors.white,),
                      const SizedBox(width: 8,),
                      Text(state.message),
                    ],
                  ), backgroundColor: Theme.of(context).colorScheme.error,));
                }
              },
            ),
            BlocListener<RoleBloc, RoleState>(
              listener: (context, state) {
                ProfileInformation profile = context.read<AccountBloc>().state.profile!;
                final roles = state.roles.where((element) => element.id == profile.role!.id);
                if(roles.isNotEmpty){
                  profile = profile.copyWith(role: roles.first);
                  context.read<AccountBloc>().add(AccountEvent.onUpdateRoleDetails(profile));
                }
              },
            )
          ],
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: BlocBuilder<RoleBloc, RoleState>(
                      builder: (context, state) {
                      final roles = [...state.roles];
                        roles.removeWhere((element) => element.code == 'super_admin');
                        return Card(
                          margin: EdgeInsets.zero,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  child: Text('Roles', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),),
                                ),
                                const SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  child: TextFormField(
                                    key: _roleNameFieldState,
                                    controller: _roleNameController,
                                    validator: (value) => EmptyFieldValidator.dirty(value, errorMessage: 'Enter role name').error,
                                    decoration: InputDecoration(
                                      labelText: 'Add role name',
                                      suffixIcon: IconButton(onPressed: () {
                                        if(_roleNameFieldState.currentState!.validate()){
                                          context.read<RoleBloc>().add(RoleEvent.onAdd(Role(name: _roleNameController.text)));
                                          _roleNameController.clear();
                                        }
                                      }, icon: const Icon(Ionicons.add)),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16,),
                                ...roles.map((e) => ListTileItem(title: Text(e.name), onPressed: (){
                                  AutoRouter.of(context).push(AttachRulesRoute(role: e));
                                }, subtitle: _getListOfModules(e),),).toList()
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: BlocBuilder<ModuleBloc, ModuleState>(
                    builder: (context, state) {
                      return Card(
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Text('Modules', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),),
                              ),
                              const SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: TextFormField(
                                  key:  _moduleNameFieldState,
                                  controller: _moduleNameController,
                                  validator: (value) => EmptyFieldValidator.dirty(value, errorMessage: 'Enter module name').error,
                                  decoration: InputDecoration(
                                    labelText: 'Add module name',
                                    suffixIcon: IconButton(onPressed: () {
                                      if(_moduleNameFieldState.currentState!.validate()){
                                        context.read<ModuleBloc>().add(ModuleEvent.onAdd(Module(name: _moduleNameController.text)));
                                        _moduleNameController.clear();
                                      }
                                    }, icon: const Icon(Ionicons.add)),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16,),
                              ...state.modules.map((e) => ListTileItem(title: Text(e.name), onLongPress: (){},)).toList()
                            ],
                          ),
                        ),
                      );
                    }
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getListOfModules(Role role) {
    String modules = '';
    for(int i = 0; i < role.modulesAttached.length; i++){
      modules += '${role.modulesAttached[i].name}${i == role.modulesAttached.length - 1? '' : ', '}';
    }

    if(role.modulesAttached.isEmpty) modules = 'No modules attached';
    return modules;
  }
}
