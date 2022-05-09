import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/submit_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;

  @override
  initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
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
          'Sign up',
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
                  controller: _nameController,
                  context: context,
                  hint: 'Enter name'),
              CustomEntryField(
                  controller: _emailController,
                  context: context,
                  hint: 'Enter email'),
              CustomEntryField(
                  controller: _passwordController,
                  context: context,
                  hint: 'Enter password',
                  isPassword: true),
              CustomEntryField(
                  controller: _confirmPasswordController,
                  context: context,
                  hint: 'Confirm password',
                  isPassword: true),
              SubmitButton(text: 'Sign up', pressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
