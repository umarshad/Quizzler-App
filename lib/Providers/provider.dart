import 'package:flutter/material.dart';
import 'package:quizzler_app/Components/constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:quizzler_app/Lists/quiz_brain.dart'; // Importing the original QuizBrain class

class QuizState extends ChangeNotifier {
  final QuizBrain _quizBrain = QuizBrain(); // Initialize QuizBrain instance
  final List<Icon> _scoreKeeper = [];

  QuizBrain get quizBrain => _quizBrain;
  List<Icon> get scoreKeeper => _scoreKeeper;

  void checkAnswer(bool userPickedAnswer, BuildContext context) {
    bool correctAnswer = _quizBrain.getCorrectAnswer();
    if (_quizBrain.isFinished()) {
      Alert(
              context: context,
              title: 'Finished',
              desc: 'You\'ve reached the end of the quiz.')
          .show();
      _quizBrain.reset();
      _scoreKeeper.clear();
    }
    if (userPickedAnswer == correctAnswer) {
      _scoreKeeper.add(
        const Icon(
          Icons.check,
          color: greenColor,
        ),
      );
    } else {
      _scoreKeeper.add(
        const Icon(
          Icons.close,
          color: redColor,
        ),
      );
    }

    _quizBrain.nextQuestion();
    notifyListeners();
  }
}
