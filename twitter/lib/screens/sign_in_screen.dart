import 'package:flutter/material.dart';
import 'package:twitter/screens/forgot_password_screen.dart';
import 'package:twitter/screens/sign_up_screen.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/submit_button.dart';
import 'package:twitter/widgets/link_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign in',
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomEntryField(
                  controller: _emailController,
                  context: context,
                  hint: 'Enter email'),
              CustomEntryField(
                  controller: _passwordController,
                  context: context,
                  hint: 'Enter password',
                  isPassword: true),
              SubmitButton(
                text: 'Submit',
                pressed: () {},
              ),
              TextLinkButton(
                  text: 'Sign up',
                  pressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  }),
              TextLinkButton(
                text: 'Forgot password?',
                pressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ForgetPassword()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
