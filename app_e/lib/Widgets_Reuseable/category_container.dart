import 'package:app_e/global/quizz_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({
    // super.key,
    required this.index,
  });

  List quizName = [
    "Sport Test",
    "History Test",
    "Iq Test",
    "Math test",
    "Programming Test",
    "General Test"
  ];
  List quizColor = [
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.orange,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => QuizScreen(
                categoryMap: database[index],
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: quizColor[index],
              border: Border.all(width: 1, color: Colors.black)),
          child: Center(
            child: Text(
              quizName[index],
              style:
                  GoogleFonts.dancingScript(fontSize: 35, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
