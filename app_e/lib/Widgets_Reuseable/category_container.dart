import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({
    // super.key,
    required this.index,
  });

  List quizName = ["Sport Test", "History Test", "General Test"];
  List quizColor = [Colors.green, Colors.red, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => QuizScreen(),
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
