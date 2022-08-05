import 'package:flutter/material.dart';

class Mcqs {
  var questions = [
    "F_N",
    "F_G",
    "PUR_LE",
    "YO_",
    "A_D",
  ];
  var choices = [
    ["A", "C", "X"],
    ["S", "O", "Q"],
    ["P", "U", "N"],
    ["U", "Q", "T"],
    ["P", "W", "N"],
  ];
  var correctAnsers = ["A", "O", "P", "U", "N"];
}

var finalScore = 0;
var questionNumber = 0;
var quiz = new Mcqs();

class Quiz2 extends StatefulWidget {
  const Quiz2({Key? key}) : super(key: key);

  @override
  State<Quiz2> createState() => _Quiz2State();
}

class _Quiz2State extends State<Quiz2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10.0),
        alignment: Alignment.topCenter,
        child: Column(children: [
          Padding(padding: EdgeInsets.all(20.0)),
          Container(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Question ${questionNumber + 1} of ${quiz.questions.length}",
                  style: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
                Text(
                  "Score: $finalScore",
                  style: new TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          Text(
            quiz.questions[questionNumber],
            style: TextStyle(
              fontSize: 26.0,
            ),
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                minWidth: 120.0,
                color: Colors.green,
                onPressed: () {
                  if (quiz.choices[questionNumber][0] ==
                      quiz.correctAnsers[questionNumber]) {
                    debugPrint("correct Answer");
                    finalScore++;
                  } else {
                    debugPrint("Wrong Answer");
                  }
                  updateQuestion();
                },
                child: Text(
                  quiz.choices[questionNumber][0],
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
              //button 2

              MaterialButton(
                minWidth: 120.0,
                color: Colors.green,
                onPressed: () {
                  if (quiz.choices[questionNumber][1] ==
                      quiz.correctAnsers[questionNumber]) {
                    debugPrint("correct Answer");
                    finalScore++;
                  } else {
                    debugPrint("Wrong Answer");
                  }
                  updateQuestion();
                },
                child: Text(
                  quiz.choices[questionNumber][1],
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),

              //button 3

              MaterialButton(
                minWidth: 130.0,
                color: Colors.green,
                onPressed: () {
                  if (quiz.choices[questionNumber][2] ==
                      quiz.correctAnsers[questionNumber]) {
                    debugPrint("correct Answer");
                    finalScore++;
                  } else {
                    debugPrint("Wrong Answer");
                  }
                  updateQuestion();
                },
                child: Text(
                  quiz.choices[questionNumber][2],
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(20)),
          Container(
            alignment: Alignment.bottomCenter,
            child: MaterialButton(
              minWidth: 240.0,
              height: 30.0,
              onPressed: resetQuiz,
              child: Text(
                "Quit",
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
          ),
          Container(
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'q2');
                },
                child: const Text(
                  'Level 2',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                )),
          )
        ]),
      ),
    );
  }

  resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => Summary(score: finalScore),
          ),
        );
      } else {
        questionNumber++;
      }
    });
  }
}

class Summary extends StatelessWidget {
  final int score;
  const Summary({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "final score: $score ",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        MaterialButton(
          color: Colors.red,
          onPressed: () {
            questionNumber = 0;
            finalScore = 0;
            Navigator.pop(context);
          },
          child: Text(
            "Reset Quiz ",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        )
      ],
    ));
  }
}
