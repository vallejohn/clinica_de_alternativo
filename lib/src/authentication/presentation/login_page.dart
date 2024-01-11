part of 'pages.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (_) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: (){

            },
            success: (){

            },
            failed: (errorMessage){

            }
          );
        },
        builder: (loginContext, loginState) {
          bool loading = loginState.maybeWhen(loading: () => true, orElse: () => false);
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    Text(
                      'Clinica De Alternativo',
                      style: Theme.of(context).typography.dense.headlineMedium?.copyWith(color: Colors.black),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    TextField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: FilledButton(
                        onPressed: loading ? null : () {
                          loginContext.read<LoginBloc>().add(LoginEvent.onLogin(LoginParams(
                            username: _usernameController.text,
                            password: _passwordController.text,
                          )));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (!loading) const Icon(Icons.login, size: 17),
                            const SizedBox(width: 15),
                            Text(loading ? 'Logging in...' : 'Login'),
                            if (loading)
                              SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: Theme.of(context).disabledColor,
                                  )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
