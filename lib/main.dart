import 'package:faucon_qcm/screens/quest_screen.dart';
import 'package:flutter/material.dart';

import 'color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Quizz',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        fontFamily: "Muli",
      
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return const QuestScreen(
     
    );
  }
}
