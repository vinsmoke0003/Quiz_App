import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Text(
              ((data['question_index'] as int) + 1).toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(' ${data['questions'] as String}'),
                  const SizedBox(height: 5),
                  Text('Your answer: ${data['user_answer'] as String}',
                      style: const TextStyle(color: Colors.red)),
                  Text('Correct answer: ${data['correct_answer'] as String}',
                      style: const TextStyle(color: Colors.green)),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
