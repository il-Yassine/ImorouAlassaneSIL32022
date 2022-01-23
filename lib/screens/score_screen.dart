import 'package:faucon_qcm/color.dart';
import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Quiz'),
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: unselectedQuestionColor,
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                Image.asset("assets/images/congrats.png"),
                const Text(
                  " Félicitation !!",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  " Score 90%",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "     Vous avez bien répondu à toutes les questions",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
