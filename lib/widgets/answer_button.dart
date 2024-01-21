//  //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import  FILES
// import 'question_screen.dart';
//  PARTS
//  PROVIDERS

//

class AnswerButton extends StatelessWidget {
  final String aswerText;
  final void Function() onTap;

  const AnswerButton({super.key, required this.aswerText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 40.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
          backgroundColor: const Color.fromARGB(255, 33, 1, 95),
          foregroundColor: Colors.white),
      child: Text(
        aswerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
