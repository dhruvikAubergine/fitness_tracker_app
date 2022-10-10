import 'package:fitness_tracker_app/features/authentication/cubit/login_cubit.dart';
import 'package:fitness_tracker_app/features/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Provides the login page with text field and options to login into the app.
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const String kEmailRegexPattern =
      r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isLoading = false;

  void _logIn() {
    if (!(_formKey.currentState?.validate() ?? false)) {
      return;
    }
    _formKey.currentState?.save();
    final password = _passwordController.text;
    final email = _emailController.text.trim();
    context.read<LoginCubit>().logIn(email: email, password: password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccessState) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.message)));
              setState(() => _isLoading = false);
              Navigator.of(context).pushReplacementNamed(HomePage.routeName);
            } else if (state is LoginLoadingState) {
              setState(() => _isLoading = true);
            } else if (state is LoginErrorState) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.message)));
              setState(() => _isLoading = false);
            }
          },
          child: Form(
            key: _formKey,
            child: ListView(
              padding:
                  const EdgeInsets.all(15) + const EdgeInsets.only(top: 170),
              children: [
                Text(
                  'Fitness Tracker App',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _emailController,
                  textInputAction: TextInputAction.next,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    final email = value?.trim() ?? '';
                    if (email.isEmpty ||
                        !RegExp(kEmailRegexPattern).hasMatch(email)) {
                      return 'Please enter a valid email id';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _passwordController,
                  obscureText: !_isPasswordVisible,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.visiblePassword,
                  autofillHints: const [AutofillHints.password],
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                      ),
                      onPressed: () => setState(
                        () => _isPasswordVisible = !_isPasswordVisible,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    final pass = value ?? '';
                    if (pass.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                MaterialButton(
                  height: 50,
                  onPressed: _logIn,
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: _isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text(
                          'Log In',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
