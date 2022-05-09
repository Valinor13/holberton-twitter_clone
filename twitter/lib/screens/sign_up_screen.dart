import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/submit_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomEntryField(hint: 'Enter Name'),
          CustomEntryField(hint: 'Enter email'),
          CustomEntryField(hint: 'Enter password', isPassword: true),
          CustomEntryField(hint: 'Confirm password', isPassword: true),
          const SubmitButton(text: 'Sign up'),
        ],
      )),
    );
  }
}
