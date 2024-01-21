//  //
//  Import LIBRARIES
import 'dart:ffi';

import 'package:flutter/material.dart';
//  Import  FILES
import '../data/questions.dart';
import '../widgets/answer_button.dart';
//  PARTS
//  PROVIDERS

//

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      // currentQuestionIndex = currentQuestionIndex + 1;
      // currentQuestionIndex += 1;
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final currentQuestion = questions[0];
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              // 'The question ....',
              currentQuestion.text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30.0),
            ...currentQuestion.getShuffledAnswers().map(
                  (answer) => AnswerButton(
                    aswerText: answer,
                    onTap: answerQuestion,
                  ),
                ),
            const SizedBox(height: 10.0),
            // AnswerButton(
            //   aswerText: currentQuestion.answers[1],
            //   onTap: () {},
            // ),
            // const SizedBox(height: 10.0),
            // AnswerButton(
            //   aswerText: currentQuestion.answers[2],
            //   onTap: () {},
            // ),
            // const SizedBox(height: 10.0),
            // AnswerButton(
            //   aswerText: currentQuestion.answers[3],
            //   onTap: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
