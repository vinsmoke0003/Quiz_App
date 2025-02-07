import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple, // Button background color
        foregroundColor: Colors.white, // Text color
        elevation: 5, // Shadow for depth
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          // Rounded corners
        ),
        alignment: Alignment.center,
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
