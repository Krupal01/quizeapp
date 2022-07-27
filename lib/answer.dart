import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerHandler;
  final String answer;
  const Answer({Key? key, required this.answerHandler, required this.answer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(onPressed: answerHandler, child: Text(answer)));
  }
}
