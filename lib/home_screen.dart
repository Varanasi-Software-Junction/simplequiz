import 'package:flutter/material.dart';

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
          },
          child: Text('Start Quiz'),
        ),
      ),
    );
  }
}
