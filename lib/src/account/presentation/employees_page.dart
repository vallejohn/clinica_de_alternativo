part of 'pages.dart';

@RoutePage()
class EmployeesPage extends StatefulWidget {
  const EmployeesPage({super.key});

  @override
  State<EmployeesPage> createState() => _EmployeesPageState();
}

class _EmployeesPageState extends State<EmployeesPage> {
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employees', style: Theme
            .of(context)
            .textTheme
            .headlineLarge,),
      ),
      body: BlocProvider<EmployeesBloc>(
        create: (context) => EmployeesBloc()..add(const EmployeesEvent.onGetList()),
        child: BlocBuilder<EmployeesBloc, EmployeesState>(
          builder: (context, state) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  BlocProvider<WidgetHelperCubit<AddEmployeeState>>(
                    create: (context) => WidgetHelperCubit<AddEmployeeState>(const AddEmployeeState()),
                    child: BlocBuilder<WidgetHelperCubit<AddEmployeeState>, AddEmployeeState>(
                      builder: (visContext, visState) {
                        final cubit = visContext.read<WidgetHelperCubit<AddEmployeeState>>();
                        final branches = context.read<BranchBloc>().state.branches;
                        final roles = context.read<RoleBloc>().state.roles;
                        return Column(
                          children: [
                            ListTileItem(
                              leadingIcon: const CircleAvatar(backgroundColor: Colors.transparent,child: Icon(Ionicons.add,),),
                              title: const Text('Add'),
                              onPressed: (){
                                cubit.onUpdateState(visState.copyWith(addingEmployee: !visState.addingEmployee));
                              },
                            ),
                            if(visState.addingEmployee)
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextField(
                                      controller: _emailController,
                                      decoration: const InputDecoration(
                                        labelText: 'Email',
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    TextField(
                                      controller: _nameController,
                                      decoration: const InputDecoration(
                                        labelText: 'Name',
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    TextField(
                                      controller: _passwordController,
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                        labelText: 'Password',
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    DropdownMenu<Branch>(
                                      initialSelection: cubit.state.selectedBranch,
                                      onSelected: (Branch? value) {
                                        cubit.onUpdateState(visState.copyWith(selectedBranch: value));
                                      },
                                      dropdownMenuEntries: branches.map<DropdownMenuEntry<Branch>>((Branch value) {
                                        return DropdownMenuEntry<Branch>(value: value, label: value.name);
                                      }).toList(),
                                    ),
                                    const SizedBox(height: 10,),
                                    DropdownMenu<Role>(
                                      initialSelection: cubit.state.selectedRole,
                                      onSelected: (Role? value) {
                                        cubit.onUpdateState(visState.copyWith(selectedRole: value));
                                      },
                                      dropdownMenuEntries: roles.map<DropdownMenuEntry<Role>>((Role value) {
                                        return DropdownMenuEntry<Role>(value: value, label: value.name);
                                      }).toList(),
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Expanded(child: FilledButton(onPressed: (){
                                          context.read<EmployeesBloc>().add(EmployeesEvent.onAdd(AddAccountParams(
                                              email: _emailController.text, password: _passwordController.text,
                                              profile: ProfileInformation(
                                                name: _nameController.text,
                                                branch: visState.selectedBranch,
                                                role: visState.selectedRole,
                                          )
                                          )));
                                        }, child: const Text('Add'))),
                                        const SizedBox(width: 10,),
                                        Expanded(child: FilledButton.tonal(
                                          onPressed: (){
                                            cubit.onUpdateState(visState.copyWith(addingEmployee: !visState.addingEmployee));
                                          },
                                          child: const Text('Cancel'),
                                        ))
                                      ],
                                    ),
                                    const SizedBox(height: 40,),
                                  ],
                                ),
                              ),
                          ],
                        );
                      }
                    ),
                  ),
                  ...state.employees.map((e) => ListTileItem(
                    leadingIcon: CircleAvatar(child: Text(e.name[0], style: TextStyle(color: Theme.of(context).colorScheme.primary),),),
                    title: Text(e.name),
                    subtitle: '${e.role == null? 'No role assigned' : e.role!.name} / ${e.branch == null? 'No branch assigned' : e.branch!.name}',
                    onPressed: (){

                    },
                  )).toList()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
