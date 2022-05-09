import 'package:flutter/material.dart';

class CustomEntryField extends StatelessWidget {
  CustomEntryField({
    Key? key,
    required this.hint,
    this.isPassword = false,
  }) : super(key: key);

  final String hint;
  final TextEditingController _controller = TextEditingController();
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: _controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.blue,
            ),
          ),
          hintText: hint,
        ),
      ),
    );
  }
}
