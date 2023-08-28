import 'package:app_e/Screens/openingscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_e/global/quizz_data.dart';

class ScoreScreen extends StatefulWidget {
  final int totalScore;
  final int totalnumofquestions;
  final TextEditingController usernameController;
  const ScoreScreen({
    super.key,
    required this.totalScore,
    required this.totalnumofquestions,
    required this.usernameController,
  });

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  bool _animateContent = false;

  @override
  void initState() {
    super.initState();
    // Trigger animation after a short delay when the screen is loaded.
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        _animateContent = true;
      });
    });
  }

  @override
  void dispose() {
    widget.usernameController.clear(); // Clear the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 229, 68, 122),
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            ("Score"),
            style: GoogleFonts.dancingScript(fontSize: 30, color: Colors.white),
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: Image.asset('images/logo3.png'),
          ),
        ]),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Opacity(
          opacity: _animateContent ? 1.0 : 0.0,
          child: Transform.translate(
            offset: Offset(0.0, _animateContent ? 0.0 : 50.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(30),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Congrats, ",
                        style:
                            const TextStyle(fontSize: 20, color: Colors.black),
                        children: [
                          TextSpan(
                            text: " ${widget.usernameController.text}",
                            style: GoogleFonts.dancingScript(
                              color: const Color.fromARGB(255, 70, 67, 67),
                              fontSize: 30,
                            ),
                          ),
                          const TextSpan(text: " ,your score is "),
                          TextSpan(
                            text:
                                "${widget.totalScore}/${widget.totalnumofquestions}",
                            style: GoogleFonts.dancingScript(
                              color: const Color.fromARGB(255, 70, 67, 67),
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: double.infinity,
                  height: _animateContent ? 100 : 0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const OpeningScreen(),
                        ),
                        (Route<dynamic> route) => false,
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 229, 68, 122),
                      ),
                    ),
                    child: Text(
                      "Play again",
                      style: GoogleFonts.dancingScript(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
