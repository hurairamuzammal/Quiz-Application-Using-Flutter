import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromRGBO(255, 255, 255, 0.355),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            "Learn Flutter the Fun Way!!",
            style: GoogleFonts.montserrat(
              color: const Color.fromARGB(255, 255, 194, 234),
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(
              Icons.arrow_right_alt_outlined,
            ),
            label: const Text(
              "Start Quiz",
            ),
          ),
        ],
      ),
    );
  }
}
