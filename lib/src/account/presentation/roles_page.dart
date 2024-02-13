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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Roles and modules'),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<RoleBloc, RoleState>(
            listenWhen: (prev, cur) => cur.status == RoleStatus.failed,
            listener: (context, state) {
              showDialog(context: context, builder: (context) => const PermissionErrorDialog());
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
                                  controller: _roleNameController,
                                  validator: (value){
                                    if(value != null){
                                      if(value.isEmpty) return 'Enter role name';
                                      return null;
                                    }
                                    return 'Enter role name';
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Add role name',
                                    suffixIcon: IconButton(onPressed: () {
                                      context.read<RoleBloc>().add(RoleEvent.onAdd(Role(name: _roleNameController.text)));
                                      _roleNameController.clear();
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
                              child: TextField(
                                controller: _moduleNameController,
                                decoration: InputDecoration(
                                  labelText: 'Add module name',
                                  suffixIcon: IconButton(onPressed: () {
                                    context.read<ModuleBloc>().add(ModuleEvent.onAdd(Module(name: _moduleNameController.text)));
                                    _moduleNameController.clear();
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
