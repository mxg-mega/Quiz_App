import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.data});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            (data['question'] as String),
            style: GoogleFonts.lato(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            (data['user_answer'] as String),
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 189, 142, 240),
              fontSize: 11,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
            (data['correct_answer'] as String),
            style: GoogleFonts.lato(
              color: Colors.greenAccent,
              // fontWeight: FontWeight.bold,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
