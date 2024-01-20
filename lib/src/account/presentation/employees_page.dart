part of 'pages.dart';

@RoutePage()
class EmployeesPage extends StatefulWidget {
  const EmployeesPage({super.key});

  @override
  State<EmployeesPage> createState() => _EmployeesPageState();
}

class _EmployeesPageState extends State<EmployeesPage> {
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
                  ...state.employees.map((e) => ListTileItem(
                    leadingIcon: CircleAvatar(child: Text(e.name[0], style: TextStyle(color: Theme.of(context).colorScheme.primary),),),
                    title: e.name,
                    subtitle: '${e.role == null? 'No role assigned' : e.role!.name} / ${e.branch == null? 'No branch assigned' : e.branch!.name}',
                    onPressed: (){
                      context.read<EmployeesBloc>().add(EmployeesEvent.onUpdate(e.copyWith(
                        branch: context.read<BranchBloc>().state.branches.first,
                        role: context.read<RoleBloc>().state.roles.first
                      )));
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
