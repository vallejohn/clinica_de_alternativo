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
      body: BlocBuilder<BranchBloc, BranchState>(
        builder: (context, state) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: _branchNameController,
                    decoration: InputDecoration(
                      labelText: 'Branch name',
                      suffixIcon: IconButton(onPressed: (){
                        context.read<BranchBloc>().add(BranchEvent.onAdd(Branch(name: _branchNameController.text)));
                        _branchNameController.clear();
                      }, icon: const Icon(Ionicons.add)),
                    ),
                  ),
                ),
                const Divider(),
                ...state.branches.map((e) => ListTileItem(title: e.name)).toList()
              ],
            ),
          );
        },
      ),
    );
  }
}
