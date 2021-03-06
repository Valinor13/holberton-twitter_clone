import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final VoidCallback? pressed;
  const SubmitButton({Key? key, required this.text, required this.pressed}) : super(key: key);

  // Elevated Button
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        fixedSize: const Size(525, 58));

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50.0),
      child: Center(
        child: ElevatedButton(
          style: style,
          onPressed: pressed,
          child: Text(text),
        ),
      ),
    );
  }
}
