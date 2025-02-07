import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activecreen = 'start-screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activecreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activecreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activecreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activecreen == 'results-screen') {
      screenWidget = ResultsScreen(choosenAnswer: selectedAnswers,);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 0, 55),
                Color.fromARGB(189, 48, 5, 43)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
