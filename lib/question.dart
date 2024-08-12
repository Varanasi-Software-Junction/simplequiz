import 'dart:convert';

class Question {
  final String question;
  final List<String> options;
  final int correctAnswer;

  Question(this.question, this.options, this.correctAnswer);
}