import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizzler_app/Components/constants.dart';
import 'package:quizzler_app/Providers/provider.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the QuizState instance
    final quizState = Provider.of<QuizState>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                quizState.quizBrain.getQuestionTex(),
                textAlign: TextAlign.center,
                style: headingTextStyle,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                // Call checkAnswer function with the selected answer
                quizState.checkAnswer(true, context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              child: Text(
                'True',
                style: headingTextStyle,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                // Call checkAnswer function with the selected answer
                quizState.checkAnswer(false, context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              child: Text(
                'False',
                style: headingTextStyle,
              ),
            ),
          ),
        ),
        // Display scoreKeeper widgets from quizState
        Row(
          children: quizState.scoreKeeper,
        )
      ],
    );
  }
}
