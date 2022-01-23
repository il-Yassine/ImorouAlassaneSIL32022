import 'package:faucon_qcm/data/quizzes_list.dart';
import 'package:faucon_qcm/screens/score_screen.dart';
import 'package:flutter/material.dart';


import '../color.dart';
class QuestScreen extends StatefulWidget {
  const QuestScreen({ Key? key }) : super(key: key);

  @override
  _QuestScreenState createState() => _QuestScreenState();
}

class _QuestScreenState extends State<QuestScreen> {
  Color color1= unselectedQuestionColor;
  Color color2= unselectedQuestionColor;
  Color color3= unselectedQuestionColor;
  Color color4= unselectedQuestionColor;
  late int indexQuestion;
  @override
  void initState() {
    super.initState();
    indexQuestion=0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Flutter Quiz"),
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical:30, horizontal: 15),
        child: Column(
          children: [
           Expanded(
             flex:2,
             child: Column(
              children: [
                 Text( AllQuizzes[indexQuestion].question,
                 style: TextStyle(fontSize: 13, color: Colors.white),
                 ),
                 const Divider(
                   color: Colors.white,
                   height: 15,
                   thickness: 2,
                 ),
              ],
              
            ), 
            ),
            const SizedBox(height:15),
           Expanded(
             flex: 10,
             child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          color1 = selectedQuestionColor;
                          color2 = unselectedQuestionColor;
                          color3 = unselectedQuestionColor;
                          color4 = unselectedQuestionColor;
                        });
                      },
                      child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: color1,
                              borderRadius: BorderRadius.circular(30)),
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.amber),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'A',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: TextButton(
                                    onPressed: null,
                                    child: Text(
                                      AllQuizzes[indexQuestion]
                                          .possibleAnswers[0],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                      ),
                                    )),
                              ),
                            ],
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        color2 = selectedQuestionColor;
                        color1 = unselectedQuestionColor;
                        color3 = unselectedQuestionColor;
                        color4 = unselectedQuestionColor;
                      });
                    },
                    child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: color2,
                            borderRadius: BorderRadius.circular(30)),
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.amber),
                              child: const TextButton(
                                onPressed: null,
                                child: Text(
                                  'B',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: TextButton(
                                  onPressed: null,
                                  child: Text(
                                    AllQuizzes[indexQuestion]
                                        .possibleAnswers[1],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                    ),
                                  )),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        color3 = selectedQuestionColor;
                        color1 = unselectedQuestionColor;
                        color2 = unselectedQuestionColor;
                        color4 = unselectedQuestionColor;
                      });
                    },
                    child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: color3,
                            borderRadius: BorderRadius.circular(30)),
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.amber),
                              child: TextButton(
                                onPressed: null,
                                child: const Text(
                                  'C',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: TextButton(
                                onPressed: null,
                                child: Text(
                                  AllQuizzes[indexQuestion].possibleAnswers[2],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        color4 = selectedQuestionColor;
                        color1 = unselectedQuestionColor;
                        color2 = unselectedQuestionColor;
                        color3 = unselectedQuestionColor;
                      });
                    },
                    child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: color4,
                            borderRadius: BorderRadius.circular(30)),
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.amber),
                              child: const TextButton(
                                onPressed: null,
                                child: Text(
                                  'D',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: TextButton(
                                onPressed: null,
                                child: Text(
                                  AllQuizzes[indexQuestion].possibleAnswers[3],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(height:13),
           Expanded(
             flex: 2 ,
             child:  Container(
               decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(30)),
                width: double.maxFinite,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (indexQuestion >= 5) {
                        indexQuestion = 0;

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScoreScreen(),
                          ),
                        );
                      } else {
                        indexQuestion += 1;
                      }
                    });
                  },
                  child: const Text(
                    'Suivant',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
            ),
            )


        ],
        ),
      ),
    );
  }
}
  