import 'package:flutter/material.dart';
import 'quiz_screen.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MCQ App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to quiz screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuizScreen()),
            );
          },
          child: Text('Start Quiz'),
        ),
      ),
    );
  }
}
