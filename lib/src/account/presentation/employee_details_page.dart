part of 'pages.dart';

@RoutePage()
class EmployeeDetailsPage extends StatefulWidget {
  final ProfileInformation profileInformation;
  const EmployeeDetailsPage({super.key, required this.profileInformation});

  @override
  State<EmployeeDetailsPage> createState() => _EmployeeDetailsPageState();
}

class _EmployeeDetailsPageState extends State<EmployeeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.profileInformation.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        physics: const BouncingScrollPhysics(),
        child: BlocBuilder<AccountBloc, AccountState>(
          builder: (context, accState) {
            final permissionFailed = accState.status == AccountStatus.failed && (accState.errorCode != null && accState.errorCode == ErrorCode.permissionDenied);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedSize(duration: const Duration(milliseconds: 200),
                  child: permissionFailed? Card(
                    color: permissionFailed? Theme.of(context).colorScheme.errorContainer : null,
                    elevation: 0,
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: SizedBox(child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Ionicons.information_circle_outline, color: Theme.of(context).colorScheme.error,),
                          const SizedBox(width: 10,),
                          Expanded(child: Text(accState.message, style: TextStyle(color: Theme.of(context).colorScheme.error),)),
                        ],
                      )),
                    ),
                  ) : Container(),
                ),
                BlocProvider<WidgetHelperCubit<bool>>(
                  create: (_) => WidgetHelperCubit<bool>(false),
                  child: BlocBuilder<WidgetHelperCubit<bool>, bool>(
                    builder: (erContext, editRoleVisible) {
                      return BlocProvider<WidgetHelperCubit<Role>>(
                        create: (context) => WidgetHelperCubit<Role>(widget.profileInformation.role!),
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
                                            if(editRoleVisible) FilledButton(onPressed: (){
                                              erContext.read<WidgetHelperCubit<bool>>().onUpdateState(!editRoleVisible);
                                              context.read<AccountBloc>().add(AccountEvent.onSaveDetails(widget.profileInformation.copyWith(role: state)));
                                            }, child: const Text('Save')),
                                            const SizedBox(width: 8,),
                                            TextButton(onPressed: (){
                                              erContext.read<WidgetHelperCubit<bool>>().onUpdateState(!editRoleVisible);
                                            }, child: Text(editRoleVisible? 'Cancel' : 'Edit')),
                                          ],
                                        ),
                                        title: Text('Role', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),),
                                        subtitle: widget.profileInformation.role == null? 'No assigned role' : widget.profileInformation.role?.name,
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
                        return BlocProvider<WidgetHelperCubit<Branch>>(
                          create: (context) => WidgetHelperCubit<Branch>(widget.profileInformation.branch!),
                          child: BlocBuilder<WidgetHelperCubit<Branch>, Branch>(
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
                                                if(editRoleVisible) FilledButton(onPressed: (){
                                                  erContext.read<WidgetHelperCubit<bool>>().onUpdateState(!editRoleVisible);
                                                  context.read<AccountBloc>().add(AccountEvent.onSaveDetails(widget.profileInformation.copyWith(branch: state)));
                                                }, child: const Text('Save')),
                                                const SizedBox(width: 8,),
                                                TextButton(onPressed: (){
                                                  erContext.read<WidgetHelperCubit<bool>>().onUpdateState(!editRoleVisible);
                                                }, child: Text(editRoleVisible? 'Cancel' : 'Edit')),
                                              ],
                                            ),
                                            title: Text('Branch', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary),),
                                            subtitle: widget.profileInformation.branch == null? 'No assigned branch' : widget.profileInformation.branch?.name,
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
                                                            rContext.read<WidgetHelperCubit<Branch>>().onUpdateState(value!);
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
            );
          }
        ),
      ),
    );
  }
}
