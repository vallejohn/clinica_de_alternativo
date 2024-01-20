part of 'pages.dart';

@RoutePage()
class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account', style: Theme
            .of(context)
            .textTheme
            .headlineLarge,),
      ),
      body: BlocProvider<AccountBloc>(
        create: (context) => AccountBloc()..add(AccountEvent.onGetDetails(FirebaseAuth.instance.currentUser!.uid)),
        child: BlocBuilder<AccountBloc, AccountState>(
          builder: (context, state) {
            if(state.status == AccountStatus.loading || state.status == AccountStatus.initial){
              return const Center(
                child: LinearProgressIndicator(),
              );
            }
            
            final profile = state.profile!;
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 20),
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTileItem(
                    leadingIcon: Icon(Ionicons.person_outline, color: Theme.of(context).colorScheme.primary,),
                    title: 'Account name', subtitle: profile.name, onPressed: (){
                  },),
                  ListTileItem(
                    leadingIcon: Icon(Ionicons.shield_outline, color: Theme.of(context).colorScheme.primary,),
                    title: 'Role', subtitle: profile.role == null? 'No assigned role' : profile.role?.name, onPressed: (){
                  },),
                  ListTileItem(
                    leadingIcon: Icon(Ionicons.pin_outline, color: Theme.of(context).colorScheme.primary,),
                    title: 'Branch', subtitle: profile.branch == null? 'No assigned branch' : profile.branch?.name, onPressed: (){
                  },),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
