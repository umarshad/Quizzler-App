import 'package:flutter/material.dart';

class Question {
  late String questionText;
  late bool questionAnswer;

  Question({required q, required a}) {
    questionText = q;
    questionAnswer = a;
  }
}

List<Icon> scoreKeeper = [];
