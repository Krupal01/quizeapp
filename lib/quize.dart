import 'package:flutter/material.dart';
import 'package:quizeapp/answer.dart';
import 'package:quizeapp/question.dart';

class QuizeScreen extends StatefulWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerTheQuestion;
  final int totalScore;
  final VoidCallback resetQuiz;

  const QuizeScreen(
      {Key? key,
      required this.questions,
      required this.questionIndex,
      required this.answerTheQuestion,
      required this.totalScore,
      required this.resetQuiz})
      : super(key: key);

  @override
  State<QuizeScreen> createState() => _QuizeScreenState();
}

class _QuizeScreenState extends State<QuizeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Quize Application"),
        ),
        body: widget.questionIndex < widget.questions.length
            ? Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Question(
                          question: widget.questions[widget.questionIndex]
                              ["question"] as String),
                      Answer(
                          answerHandler: () => widget.answerTheQuestion(
                              (widget.questions[widget.questionIndex]["answer"]
                                  as List<Map<String, Object>>)[0]["score"]),
                          answer: (widget.questions[widget.questionIndex]
                                  ["answer"] as List<Map<String, Object>>)[0]
                              ["text"] as String),
                      Answer(
                          answerHandler: () => widget.answerTheQuestion(
                              (widget.questions[widget.questionIndex]["answer"]
                                  as List<Map<String, Object>>)[1]["score"]),
                          answer: (widget.questions[widget.questionIndex]
                                  ["answer"] as List<Map<String, Object>>)[1]
                              ["text"] as String),
                      Answer(
                          answerHandler: () => widget.answerTheQuestion(
                              (widget.questions[widget.questionIndex]["answer"]
                                  as List<Map<String, Object>>)[2]["score"]),
                          answer: (widget.questions[widget.questionIndex]
                                  ["answer"] as List<Map<String, Object>>)[2]
                              ["text"] as String),
                      Answer(
                          answerHandler: () => widget.answerTheQuestion(
                              (widget.questions[widget.questionIndex]["answer"]
                                  as List<Map<String, Object>>)[3]["score"]),
                          answer: (widget.questions[widget.questionIndex]
                                  ["answer"] as List<Map<String, Object>>)[3]
                              ["text"] as String)
                    ]),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Total Score ${widget.totalScore}"),
                    TextButton(
                        onPressed: widget.resetQuiz,
                        child: const Text("start again"))
                  ],
                ),
              ),
      ),
    );
  }
}
