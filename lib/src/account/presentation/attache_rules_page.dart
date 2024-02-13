part of 'pages.dart';

@RoutePage()
class AttachRulesPage extends StatefulWidget {
  final Role role;
  const AttachRulesPage({super.key, required this.role});

  @override
  State<AttachRulesPage> createState() => _AttachRulesPageState();
}

class _AttachRulesPageState extends State<AttachRulesPage> {
  @override
  Widget build(BuildContext context) {

    final roleState = context.watch<RoleBloc>().state;
    final accountState = context.watch<AccountBloc>().state;
    final selectedRole = roleState.roles.firstWhere((element) => element.id == widget.role.id);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.role.name),
        actions: [
          IconButton(onPressed: (){
            context.read<RoleBloc>().add(RoleEvent.onUpdate(selectedRole));
          }, icon: const Text('SAVE'))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            Chip(label: Row(
              children: [
                const Icon(Ionicons.information_circle_outline),
                const SizedBox(width: 10,),
                Text('Attach security rules for ${widget.role.name.toLowerCase()} role.'),
              ],
            )),
            const SizedBox(height: 20,),
            ...context.read<ModuleBloc>().state.modules.map((e) => Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: AnimatedSize(
                  duration: const Duration(milliseconds: 200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: selectedRole.modulesAttached.contains(e), onChanged: (_){
                            final modules = [...selectedRole.modulesAttached];
                            if(modules.contains(e)){
                              modules.remove(e);
                            }else{
                              modules.add(e);
                            }
                            context.read<RoleBloc>().add(RoleEvent.onEdit(widget.role.copyWith(
                              modulesAttached: modules,
                            )));
                          },),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(e.name, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),),
                                if(e.description.isNotEmpty) Text(e.description,),
                              ],
                            ),
                          ),
                        ],
                      ),
                      if(selectedRole.modulesAttached.contains(e)) const Divider(),
                      if(selectedRole.modulesAttached.contains(e)) Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Checkbox(value: e.canEdit, onChanged: !selectedRole.modulesAttached.contains(e)? null : (value){

                            },),
                          ),
                          const Text('Allow edit'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),).toList(),

          ],
        ),
      ),
    );
  }
}
