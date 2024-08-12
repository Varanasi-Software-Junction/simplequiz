import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Column(
        children: [
          Text('This is the question'),
          RadioListTile(
            title: Text('Option 1'),
            value: 1,
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value;
              });
            },
          ),
          RadioListTile(
            title: Text('Option 2'),
            value: 2,
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value;
              });
            },
          ),
          // Add more options as needed
          // Button to submit answer or next question
        ],
      ),
    );
  }
}
