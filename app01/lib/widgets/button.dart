import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.myText,
      required this.bgColor,
      required this.textColor});

  final String myText;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          myText,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
