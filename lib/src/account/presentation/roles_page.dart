part of 'pages.dart';

@RoutePage()
class RolesPage extends StatefulWidget {
  const RolesPage({super.key});

  @override
  State<RolesPage> createState() => _RolesPageState();
}

class _RolesPageState extends State<RolesPage> {
  final _roleNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Roles', style: Theme
            .of(context)
            .textTheme
            .headlineLarge,),
      ),
      body: BlocBuilder<RoleBloc, RoleState>(
        builder: (context, state) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: _roleNameController,
                    decoration: InputDecoration(
                      labelText: 'Role name',
                      suffixIcon: IconButton(onPressed: () {
                        context.read<RoleBloc>().add(RoleEvent.onAdd(Role(name: _roleNameController.text)));
                        _roleNameController.clear();
                      }, icon: const Icon(Ionicons.add)),
                    ),
                  ),
                ),
                const Divider(),
                ...state.roles.map((e) => ListTileItem(title: Text(e.name))).toList()
              ],
            ),
          );
        },
      ),
    );
  }
}
