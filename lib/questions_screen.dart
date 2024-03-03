import 'package:flutter/material.dart';
//adding button dart file here
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

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
      print("hello ${widget.indexNumber}");
      widget.indexNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[widget.indexNumber];

    return SizedBox(
      // this command use all the width on screen
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
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
