import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrectAnswer, required this.questionNumber});

  final bool isCorrectAnswer;
  final int questionNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      // padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 101, 240, 173)
            : const Color.fromARGB(255, 253, 129, 129),
      ),
      // decoration: ShapeDecoration(
      // shape: const CircleBorder(),
      // ),
      child: Center(
        child: Text(
          (questionNumber + 1).toString(),
          style: GoogleFonts.lato(
            fontSize: 11,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
