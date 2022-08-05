import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Level number 1",
                style: TextStyle(
                  fontSize: 32.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'qdashboard');
                },
                child: const Text(
                  'Level 1',
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
                  if (score >= 3) {
                    Navigator.pushNamed(context, 'q2');
                  }
                },
                child: const Text(
                  'Level 2',
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
                  if (finalScore > 6) {
                    Navigator.pushNamed(context, 'q2');
                  }
                },
                child: const Text(
                  'Level 3',
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
                  if (finalScore > 9) {
                    Navigator.pushNamed(context, 'q1');
                  }
                },
                child: const Text(
                  'Level 4',
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
                  if (finalScore > 12) {
                    Navigator.pushNamed(context, 'q1');
                  }
                },
                child: const Text(
                  'Level 5',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                )),
          ],
        ),
      ),
    );
  }
}
