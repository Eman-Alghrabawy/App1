import 'package:app_e/global/quizz_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/quiz_screen.dart';

class CategoryContainer extends StatefulWidget {
  final int index;

  CategoryContainer({
    // super.key,
    required this.index,
  });

  @override
  State<CategoryContainer> createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  bool _isPressed = false;
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
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            _isPressed = true;
          });
        },
        onTapUp: (_) {
          setState(() {
            _isPressed = false;
          });
          _navigateToQuizScreen();
        },
        onTapCancel: () {
          setState(() {
            _isPressed = false;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          padding: EdgeInsets.all(_isPressed ? 16 : 20),
          decoration: BoxDecoration(
            color: _isPressed ? Colors.grey : quizColor[widget.index],
            border: Border.all(width: 1, color: Colors.black),
            borderRadius: BorderRadius.circular(_isPressed ? 20 : 24),
          ),
          child: Center(
            child: AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 200),
              style: GoogleFonts.dancingScript(
                fontSize: _isPressed ? 40 : 35,
                color: _isPressed ? Colors.white : Colors.black,
              ),
              child: Text(
                quizName[widget.index],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToQuizScreen() {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => QuizScreen(
          categoryMap: database[widget.index],
        ),
      ),
    );
  }
}
