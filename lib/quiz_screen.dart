import 'package:flutter/material.dart';
import 'package:simplequiz/question.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questions = [];
  int currentQuestionIndex = 0;
  int score=0;

  bool isQuizOver = false;
  int? selectedAnswer;
  @override
  void initState() {
    super.initState();
    loadQuestions();
  }
//**********************************************************

  Future<void> loadQuestions() async {
    // Replace 'assets/questions.json' with your actual JSON file path
    final jsonString = await rootBundle.loadString('assets/questions.json');
    final jsonData = jsonDecode(jsonString);
    final List<dynamic> questionList = jsonData['questions'];

    setState(() {
      questions = questionList.map((questionJson) {
        return Question(
          questionJson['question'],
          List<String>.from(questionJson['options']),
          questionJson['correctAnswer'],
        );
      }).toList();
    });
  }
  //*******************************************************




  void checkAnswer() {
    if (selectedAnswer == questions[currentQuestionIndex].correctAnswer) {
      score++;
    }
    nextQuestion();
  }
  void nextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedAnswer = null;
      });
    } else {
      setState(() {
        isQuizOver = true;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Column(
        children: [
          if (!isQuizOver)
            Column(
              children: [
                Text(questions[currentQuestionIndex].question),
                ...questions[currentQuestionIndex].options.map((option) {
                  return RadioListTile(
                    title: Text(option),
                    value: questions[currentQuestionIndex].options.indexOf(option) + 1,
                    groupValue: selectedAnswer,
                    onChanged: (value) {
                      setState(() {
                        selectedAnswer = value;
                      });
                    },
                  );
                }).toList(),
                ElevatedButton(
                  onPressed: checkAnswer,
                  child: Text('Submit'),
                ),
              ],
            )
          else
            Text('Quiz Over! Your score is: $score'),
        ],
      ),
    );
  }

}
