part of 'pages.dart';

@RoutePage()
class StartupPage extends StatefulWidget {
  const StartupPage({super.key});

  @override
  State<StartupPage> createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: SizedBox(height: 200, width: 200, child: Image.asset('assets/images/clinica_logo.png'))),
            const SizedBox(height: 10,),
            const SizedBox(width: 100, child: LinearProgressIndicator()),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
