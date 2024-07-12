import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home.dart';

class ScoreScreen extends StatelessWidget {
  ScoreScreen(
      {super.key, required this.totalScore, required this.numberOfQuestions});

  final totalScore;
  final numberOfQuestions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 62, 65, 71),
      // appBar: AppBar(automaticallyImplyLeading: false,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 250,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 201, 197, 197),
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    child: Text(
                      "your score is : ",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 35, 35, 35),
                          fontSize: 25,
                          fontFamily: 'elsayed2'),
                    ),
                  ),
                  Text(
                    "$totalScore",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 93, 90, 90),
                        fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                  Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ));
              },
              child: Text(
                'Play Again',
                style: TextStyle(
                    color: Color.fromARGB(255, 209, 206, 206),
                    fontFamily: 'elsayed2'),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Color.fromARGB(97, 135, 132, 132),
                  elevation: 10),
            ),
          )
        ],
      ),
    );
  }
}
