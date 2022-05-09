import 'package:flutter/material.dart';

class TextLinkButton extends StatelessWidget {
  final String text;
  final VoidCallback? pressed;
  const TextLinkButton({Key? key, required this.pressed, required this.text}) : super(key: key);

  // Text Button with bold blue text
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      child: Center(
        child: TextButton(
          onPressed: pressed,
          style: TextButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: Text(text),
        ),
      ),
    );
  }
}
