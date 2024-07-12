// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/screens/iq_screen.dart';
import 'package:quiz_app/screens/sport.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b2348),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff001433),
        title: Text(
          "Category",
          style: TextStyle(fontFamily: 'elsayed_1', color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => IQ(),));
            },
            child: Container(
              width: double.infinity,
              height: 140,
              margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Color(0xff30425e),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "IQ Quiz",
                    style: TextStyle(
                        color: Color(0xffd6d6da),
                        fontFamily: 'elsayed_1',
                        fontSize: 27),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 30,
                    child: Image.asset(
                      "assets/photos/angle-right.png",
                      color: Color(0xffd6d6da),
                    ),
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SportQuiz(),));
            },
            child: Container(
              width: double.infinity,
              height: 140,
              margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Color(0xff374946),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Sport Quiz",
                    style: TextStyle(
                        color: Color(0xffd6d6da),
                        fontFamily: 'elsayed_1',
                        fontSize: 27),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 30,
                    child: Image.asset(
                      "assets/photos/angle-right.png",
                      color: Color(0xffd6d6da),
                    ),
                  ),


                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              print("History Quizzzzz");
            },
            child: Container(
              width: double.infinity,
              height: 140,
              margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Color(0xff4b4f4d),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "History Quiz",
                    style: TextStyle(
                        color: Color(0xffd6d6da),
                        fontFamily: 'elsayed_1',
                        fontSize: 27),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 30,
                    child: Image.asset(
                      "assets/photos/angle-right.png",
                      color: Color(0xffd6d6da),
                    ),
                  ),


                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
