import 'package:flutter/material.dart';
import 'package:quiz_app/screens/score.dart';

import '../data/sport_data.dart';

class SportQuiz extends StatefulWidget {
  const SportQuiz({super.key});

  @override
  State<SportQuiz> createState() => _SportQuizState();
}

class _SportQuizState extends State<SportQuiz> {
int question_sport = 0;
int score_sport = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Sport Quiz",
          style: TextStyle(color: Colors.white, fontFamily: 'elsayed2'),
        ),
        backgroundColor: Color(0xff001433),
      ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xff0b2348),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            width: double.infinity,
            height:290 ,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 25, 54, 75),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(padding: EdgeInsets.all(12),
              child: Column(children: [
                Text("Questions numbers ${question_sport +1}",
                  style: TextStyle(color: Colors.white, fontSize: 13),),
                SizedBox(
                  height: 13,
                ),
                Container(
                  child: Text(sportQuestions[question_sport]['question'],
                    style: TextStyle(color: Colors.white, fontSize: 13),),
                ),
                for(int i = 0; i < (sportQuestions[question_sport]['answers']as List).length;i++)
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          score_sport = score_sport+
                              sportQuestions[question_sport]['answers'][i]
                              ['score'] as int;
                          if (question_sport < (sportQuestions.length - 1)) {
                            setState(() {
                              question_sport++;
                            });
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    ScoreScreen(
                                      totalScore: score_sport,
                                      numberOfQuestions: sportQuestions.length,
                                    ),
                              ),
                            );
                          }

                          print('your index is ${question_sport}');
                          print('your total score is ${score_sport}');
                        },
                        child: Text(sportQuestions[question_sport]['answers']
                        [i]['ans'])),
                  ),
              ],),
            ),
          )
        ],),
      ),
    );
  }
}
