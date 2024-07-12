// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/login.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/photos/background.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 170,
                ),
                SizedBox(
                  width: 200,
                  child: Center(
                    child: Image.asset("assets/photos/home_page.png"),
                  ),
                ),
                Text(
                  "ITI Quiz App",
                  style: TextStyle(
                      color: Color(0xffEFDD3B),
                      fontSize: 30,
                      fontFamily: 'elsayed_2'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "We Are Creative enjoy our App",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'elsayed_2',
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(
                  height: 350,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.green),
                    child: Text(
                      'Start',
                      style: TextStyle(
                          fontFamily: 'elsayed_2',
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
