import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // this command use all the width on screen
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have completed the quiz!'),
              const SizedBox(height: 30),
              const Text('Your score is 3 out of 5'),
              const SizedBox(height: 30),
              TextButton(
                  onPressed: () {},
                  child: const Text('Restart Quiz')) //add text widget
            ],
          ),
        ));
  }
}
