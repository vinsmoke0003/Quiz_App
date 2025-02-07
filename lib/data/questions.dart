import 'package:quiz_app/models/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'Q-1  What are the main building blocks of Flutter UI?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'Q-2 Which programming language is primarily used for Flutter development?',
    [
      'Dart',
      'JavaScript',
      'Python',
      'Kotlin',
    ],
  ),
  QuizQuestion(
    'Q-3 What is the purpose of the `pubspec.yaml` file in a Flutter project?',
    [
      'To manage dependencies and project metadata',
      'To write the apps main logic',
      'To store database configurations',
      'To define UI layout',
    ],
  ),
  QuizQuestion(
    'Q-4 What widget is used to create a scrollable list in Flutter?',
    [
      'ListView',
      'ScrollView',
      'RecyclerView',
      'GridView',
    ],
  ),
  QuizQuestion(
    'Q-5 How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'Q-6 Which widget is used to create an immutable layout in Flutter?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Container',
      'Builder',
    ],
  ),

];
