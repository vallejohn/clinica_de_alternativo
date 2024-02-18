part of 'pages.dart';

@RoutePage()
class EmployeeDetailsPage extends StatefulWidget {
  final ProfileInformation profileInformation;
  final List<Role> roles;
  const EmployeeDetailsPage({super.key, required this.profileInformation, required this.roles});

  @override
  State<EmployeeDetailsPage> createState() => _EmployeeDetailsPageState();
}

class _EmployeeDetailsPageState extends State<EmployeeDetailsPage> {
  @override
  Widget build(BuildContext context) {

    final employeeState = context.watch<EmployeesBloc>().state;
    final employeesLoading = employeeState.status == EmployeeStatus.loading;
    final selectedEmployee = employeeState.employees.firstWhere((element) => element.uid == widget.profileInformation.uid);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedEmployee.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(employeesLoading) const LinearProgressIndicator(),
            BlocProvider<WidgetHelperCubit<bool>>(
              create: (_) => WidgetHelperCubit<bool>(false),
              child: BlocBuilder<WidgetHelperCubit<bool>, bool>(
                  builder: (erContext, editRoleVisible) {
                    return BlocProvider<WidgetHelperCubit<Role>>(
                      create: (context) => WidgetHelperCubit<Role>(widget.roles.where((element) => element.code == selectedEmployee.role?.code).first),
                      child: BlocBuilder<WidgetHelperCubit<Role>, Role>(
                          builder: (rContext, state) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ListTileItem(
                                        leadingIcon: Icon(Ionicons.shield_outline, color: Theme.of(context).colorScheme.primary,),
                                        trailingIcon: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            if(editRoleVisible) FilledButton(onPressed: employeesLoading? null : (){
                                              context.read<EmployeesBloc>().add(EmployeesEvent.onUpdate(selectedEmployee.copyWith(role: state)));
                                            }, child: const Text('Save')),
                                            const SizedBox(width: 8,),
                                            TextButton(onPressed: employeesLoading? null : (){
                                              erContext.read<WidgetHelperCubit<bool>>().onUpdateState(!editRoleVisible);
                                            }, child: Text(editRoleVisible? 'Cancel' : 'Edit')),
                                          ],
                                        ),
                                        title: Text('Role', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),),
                                        subtitle: selectedEmployee.role == null? 'No assigned role' : selectedEmployee.role?.name,
                                      ),
                                      if(editRoleVisible) const Divider(),
                                      AnimatedSize(
                                        duration: const Duration(milliseconds: 200),
                                        child: !editRoleVisible? Container() : Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 24),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              ...context.watch<RoleBloc>().state.roles.map((e) => Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Radio<Role>(value: e,
                                                      groupValue: state,
                                                      onChanged: (value){
                                                        rContext.read<WidgetHelperCubit<Role>>().onUpdateState(value!);
                                                      }),
                                                  Text(e.name)
                                                ],
                                              )).toList(),
                                              const SizedBox(height: 24,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            );
                          }
                      ),
                    );
                  }
              ),
            ),
            BlocProvider<WidgetHelperCubit<bool>>(
              create: (_) => WidgetHelperCubit<bool>(false),
              child: BlocBuilder<WidgetHelperCubit<bool>, bool>(
                  builder: (erContext, editRoleVisible) {
                    return BlocProvider<WidgetHelperCubit<Branch?>>(
                      create: (context) => WidgetHelperCubit<Branch?>(selectedEmployee.branch),
                      child: BlocBuilder<WidgetHelperCubit<Branch?>, Branch?>(
                          builder: (rContext, state) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ListTileItem(
                                        leadingIcon: Icon(Ionicons.shield_outline, color: Theme.of(context).colorScheme.primary,),
                                        trailingIcon: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            if(editRoleVisible) FilledButton(onPressed: employeesLoading? null : (){
                                              context.read<EmployeesBloc>().add(EmployeesEvent.onUpdate(selectedEmployee.copyWith(branch: state)));
                                            }, child: const Text('Save')),
                                            const SizedBox(width: 8,),
                                            TextButton(onPressed: employeesLoading? null : (){
                                              erContext.read<WidgetHelperCubit<bool>>().onUpdateState(!editRoleVisible);
                                            }, child: Text(editRoleVisible? 'Cancel' : 'Edit')),
                                          ],
                                        ),
                                        title: Text('Branch', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),),
                                        subtitle: selectedEmployee.branch == null? 'No assigned branch' : selectedEmployee.branch?.name,
                                      ),
                                      if(editRoleVisible) const Divider(),
                                      AnimatedSize(
                                        duration: const Duration(milliseconds: 200),
                                        child: !editRoleVisible? Container() : Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 24),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              ...context.watch<BranchBloc>().state.branches.map((e) => Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Radio<Branch>(value: e,
                                                      groupValue: state,
                                                      onChanged: (value){
                                                        rContext.read<WidgetHelperCubit<Branch?>>().onUpdateState(value!);
                                                      }),
                                                  Text('${e.name}/${e.type?.name.toUpperCase()}')
                                                ],
                                              )).toList(),
                                              const SizedBox(height: 24,)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
