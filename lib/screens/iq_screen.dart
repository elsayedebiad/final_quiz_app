// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/score.dart';
import '../data/quiz_app_data.dart';

class IQ extends StatefulWidget {
  const IQ({super.key});

  @override
  State<IQ> createState() => _IQState();
}

class _IQState extends State<IQ> {
  int _questionsIndex = 0;
  int totalScore = 0;

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
          "IQ Quiz",
          style: TextStyle(color: Colors.white, fontFamily: 'elsayed2'),
        ),
        backgroundColor: Color(0xff001433),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xff0b2348),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 290,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 25, 54, 75),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Questions numbers ${_questionsIndex + 1}",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 190, 183, 183)),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      child: Text(
                        iqQuestions[_questionsIndex]['question'],
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                    for (int i = 0; i < (iqQuestions[_questionsIndex]['answers'] as List).length; i++)
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              totalScore = totalScore +
                                  iqQuestions[_questionsIndex]['answers'][i]
                                      ['score'] as int;
                              if (_questionsIndex < (iqQuestions.length - 1)) {
                                setState(() {
                                  _questionsIndex++;
                                });
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        ScoreScreen(
                                      totalScore: totalScore,
                                      numberOfQuestions: iqQuestions.length,
                                    ),
                                  ),
                                );
                              }

                              print('your index is ${_questionsIndex}');
                              print('your total score is ${totalScore}');
                            },
                            child: Text(iqQuestions[_questionsIndex]['answers']
                                [i]['ans'])),
                      )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
