import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int? selectedAnswer;
  final int correctAnswer = 2; // Assuming option 2 is correct

  void checkAnswer() {
    // Implement logic to check answer and provide feedback
    if (selectedAnswer == correctAnswer) {
      // Display correct answer message
      print('Correct!');
    } else {
      // Display incorrect answer message
      print('Incorrect!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Screen'),
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
          ElevatedButton(
            onPressed: checkAnswer,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
