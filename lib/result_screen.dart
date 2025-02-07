// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({required this.choosenAnswer, super.key});

  final List<String> choosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'questions': questions[i].text, // Access the question text
        'correct_answer': questions[i].answer[0], // Correct answer is the first in the list
        'user_answer': choosenAnswer[i], // User's selected answer
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestions = summaryData.length;
    final correctAnswers = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $correctAnswers out of $totalQuestions questions correctly!',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            QuestionSummary(summaryData),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {}, // Restart logic can be added here
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
