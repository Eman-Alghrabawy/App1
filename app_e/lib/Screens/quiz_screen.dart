import 'package:app_e/Screens/score.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen({super.key});
  List answers = ["4 years", "8 years", "5 years", "6 years"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.green,
            child: Text('1/10',
                style: GoogleFonts.dancingScript(
                    fontSize: 20, color: Colors.black)),
          ),
          Text(
            'Sports Quizz',
            style: GoogleFonts.dancingScript(fontSize: 30, color: Colors.green),
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.green,
            child: Image.asset('images/logo3.png'),
          ),
        ]),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.25, // width: 50,
                width: double.infinity,

                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),

                child: Text(
                  'Question one:The Olympics are held every how many years?',
                  style: GoogleFonts.dancingScript(
                      fontSize: 35, color: Colors.black),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'Your choices is:',
                style: GoogleFonts.dancingScript(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              for (int i = 0; i < 4; i++)
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      width: 300,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const ScoreScreen(),
                            ),
                          );
                        },
                        child: Text(
                          answers[i],
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      )),
                ),
            ],
          )
        ],
      ),
    );
  }
}
