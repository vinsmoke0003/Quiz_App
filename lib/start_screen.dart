import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
           Text(
            'Hey, let\'s just learn Flutter!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 12, 31, 2),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              backgroundColor: Colors.white, // Set white background
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20,
              ),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(30), // Optional: Rounded corners
              // ),
            ),
            icon: const Icon(
              Icons.arrow_right_alt_outlined,
              color: Colors.black, // Ensure the icon remains visible
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.black), // Black text for contrast
            ),
          ),
        ],
      ),
    );
  }
}
