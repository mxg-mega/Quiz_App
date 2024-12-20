import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> summary = [];
    
    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("You Answered X out of Y questions Correctly"),
          const SizedBox(
            height: 30,
          ),
          const Text("The answered Questions"),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Finish Quiz"),
          )
        ],
      ),
    );
  }
}
