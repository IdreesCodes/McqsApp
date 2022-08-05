import 'package:flutter/material.dart';

var questions = [
  "CAT",
  "DOG",
  "Apple",
  "Mouse",
  "Ant",
];

class answers extends StatefulWidget {
  const answers({Key? key}) : super(key: key);

  @override
  State<answers> createState() => _answersState();
}

class _answersState extends State<answers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: questions.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                
                child: Container(
                  
                  height: 50,
                  margin: EdgeInsets.fromLTRB(20, 40, 20, 20),
                  color: Colors.green,
                  child: Center(
                      child: Text(
                    '${questions[index]}',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  )),
                  
                ),
              );
            }),
            
            );
  }
}
