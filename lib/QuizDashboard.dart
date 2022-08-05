import 'package:flutter/material.dart';
import 'quiz.dart';

class QuizDashBoard extends StatefulWidget {
  const QuizDashBoard({Key? key}) : super(key: key);

  @override
  State<QuizDashBoard> createState() => _QuizDashBoardState();
}

class _QuizDashBoardState extends State<QuizDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[10],
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.0,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'q1');
                },
                child: const Text(
                  'Q1',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                )),
            // Q2
            SizedBox(
              height: 40.0,
            ),

            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'q1');

                  //
                },
                child: const Text(
                  'Q2',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                )),

            //Q3
            SizedBox(
              height: 40.0,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'q1');
                },
                child: const Text(
                  'Q3',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                )),
            //Q4
            SizedBox(
              height: 40.0,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'q1');
                },
                child: const Text(
                  'Q4',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                )),

            //Q5
            SizedBox(
              height: 40.0,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'q1');
                },
                child: const Text(
                  'Q5',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                )),

            //Q6
            Container()
          ],
        ),
      ),
    );
  }
}
