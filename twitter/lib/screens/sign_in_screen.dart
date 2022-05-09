import 'package:flutter/material.dart';
import 'package:twitter/screens/sign_up_screen.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/submit_button.dart';
import 'package:twitter/widgets/link_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomEntryField(hint: 'Enter email'),
          CustomEntryField(hint: 'Enter password', isPassword: true),
          const SubmitButton(text: 'Submit'),
          TextLinkButton(
              text: 'Sign up',
              pressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const SignUp()));
              }),
          TextLinkButton(text: 'Forgot password?', pressed: () {},),
        ],
      )),
    );
  }
}
