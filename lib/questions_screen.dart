import 'package:flutter/material.dart';
//adding button dart file here
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key});
  var indexNumber = 0;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  void indexIncrement() {
    //display prompt that this function is called
    // print('indexIncrement called');
    setState(() {
      if (widget.indexNumber < questions.length - 1) {
        widget.indexNumber++;
      } else {
        widget.indexNumber = 0;
      }
      // widget.indexNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[widget.indexNumber];

    return SizedBox(
      // this command use all the width on screen
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 194, 234)),
              // style: const TextStyle(
              //   fontSize: 24,
              //   fontWeight: FontWeight.bold,
              //   color: Colors.white,
              // ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: indexIncrement,
              );
            }),
          ],
        ),
      ),
    );
  }
}
