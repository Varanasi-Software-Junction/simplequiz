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
          Text('What is Python?'),
          RadioListTile(
            title: Text('A type of snake'),
            value: 1,
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value;
              });
            },
          ),
          RadioListTile(
            title: Text('A programming language'),
            value: 2,
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value;
              });
            },
          ),
          RadioListTile(
            title: Text('A type of food'),
            value: 3,
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value;
              });
            },
          ),
          RadioListTile(
            title: Text('A city'),
            value: 4,
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value;
              });
            },
          ),
          // Add more options or questions as needed
        ],
      ),
    );
  }
}
