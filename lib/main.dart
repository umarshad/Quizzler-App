import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizzler_app/Providers/provider.dart';
import 'package:quizzler_app/Buttons/my_buttons.dart';
import 'package:quizzler_app/Components/constants.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => QuizState(),
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: greyColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: MyButtons(),
          ),
        ),
      ),
    );
  }
}
