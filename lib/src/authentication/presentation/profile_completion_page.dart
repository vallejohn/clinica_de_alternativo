part of 'pages.dart';

@RoutePage()
class ProfileCompletionPage extends StatefulWidget {
  const ProfileCompletionPage({super.key});

  @override
  State<ProfileCompletionPage> createState() => _ProfileCompletionPageState();
}

class _ProfileCompletionPageState extends State<ProfileCompletionPage> {
  final _nameController = TextEditingController();
  final _branchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Complete your profile'),
      ),
      body: BlocBuilder<ProfileCheckerBloc, ProfileCheckerState>(
        builder: (context, state) {

          bool loading = state.maybeWhen(loading: () => true, orElse: () => false);

          return SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _branchController,
                    decoration: const InputDecoration(
                      labelText: 'Branch',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: FilledButton(
                      onPressed: loading ? null : () {
                        context.read<ProfileCheckerBloc>().add(ProfileCheckerEvent.onUpdateProfile(ProfileInformation(
                          name: _nameController.text,
                          branch: _branchController.text,
                        )));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (!loading) const Icon(Icons.update, size: 17),
                          const SizedBox(width: 15),
                          Text(loading ? 'Updating information...' : 'Update information'),
                          if (loading)
                            SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Theme.of(context).disabledColor,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
