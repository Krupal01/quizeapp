import 'package:flutter/material.dart';
import './quize.dart';

void main(List<String> args) {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _questions = const [
    {
      "question": "what is your favourite animal ?",
      "answer": [
        {"text": "lion", "score": 100},
        {"text": "elephant", "score": 75},
        {"text": "tiger", "score": 50},
        {"text": "dog", "score": 25},
      ]
    },
    {
      "question": "what is your favourite color?",
      "answer": [
        {"text": "red", "score": 100},
        {"text": "green", "score": 75},
        {"text": "yellow", "score": 50},
        {"text": "black", "score": 25},
      ]
    },
    {
      "question": "what is your favourite subject?",
      "answer": [
        {"text": "science", "score": 100},
        {"text": "maths", "score": 75},
        {"text": "drowing", "score": 50},
        {"text": "social science", "score": 25},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerTheQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  void _resetQuize() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hello world",
      home: QuizeScreen(
        questions: _questions,
        questionIndex: _questionIndex,
        answerTheQuestion: _answerTheQuestion,
        totalScore: _totalScore,
        resetQuiz: _resetQuize,
      ),
    );
  }
}
