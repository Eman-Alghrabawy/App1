import 'package:app_e/Screens/score.dart';
import 'package:app_e/global/quizz_data.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatefulWidget {
  final Map categoryMap;
  QuizScreen({super.key, required this.categoryMap});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int index = 0;
  int totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: widget.categoryMap["color"],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: Text(
                "${index + 1}/${(widget.categoryMap["data"] as List).length}",
                style: GoogleFonts.dancingScript(
                    fontSize: 20, color: Colors.black)),
          ),
          Text(
            (widget.categoryMap["CategoryName"]),
            style: GoogleFonts.dancingScript(fontSize: 30, color: Colors.black),
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
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
                  widget.categoryMap["data"][index]["question"],
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
              for (int i = 0;
                  i <
                      (widget.categoryMap["data"][index]["answers"] as List)
                          .length;
                  i++)
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      width: 300,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            widget.categoryMap["color"],
                          ),
                        ),
                        onPressed: () {
                          totalScore = totalScore +
                              widget.categoryMap["data"][index]["answers"][i]
                                  ["score"] as int;
                          if (index + 1 <
                              (widget.categoryMap["data"] as List).length) {
                            setState(() {
                              index++;
                            });
                          } else {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => ScoreScreen(
                                  totalScore: totalScore,
                                  totalnumofquestions: index + 1,
                                  usernameController: usernameController,
                                ),
                              ),
                            );
                          }
                        },
                        child: Text(
                          (widget.categoryMap["data"][index]["answers"][i]
                              ["ans"]),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      )),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
