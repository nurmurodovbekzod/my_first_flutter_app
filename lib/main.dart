// flutter app added succesfully
import 'package:first/Answer.dart';
import 'package:first/Result.dart';
import 'package:first/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  final questions = [
    {
      "question": "1 + 1 = ?",
      "answers": ['-1', '4', '3', '2', '5'],
      "correct": '2'
    },
    {
      "question": "1 + 2 = ?",
      "answers": ['1', '500', '3', '4', '2'],
      "correct": '3'
    },
    {
      "question": "2 + 3 = ?",
      "answers": ['20', '1', '3', '4', '5'],
      "correct": '5'
    },
    {
      "question": "-1 + 1 = ?",
      "answers": ['0.001', '200', '3', '0', '5'],
      "correct": '0'
    },
  ];
  var totalAnswers = 0;

  void resetData() {
    setState(() {
      totalAnswers = 0;
      questionIndex = 0;
    });
  }

  void nextQuestion(String choosenAnswer) {
    if (questionIndex < questions.length) {
      if (questions[questionIndex]['correct'] == choosenAnswer) {
        totalAnswers++;
      }
    }
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
    if (questionIndex < questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                      questionText:
                          questions[questionIndex]['question'].toString()),
                  ...(questions[questionIndex]['answers'] as List<String>)
                      .map((answerText) {
                    return Answer(
                        callback: () => nextQuestion(answerText),
                        answer: answerText.toString());
                  }).toList()
                ],
              )
            : Result(result: totalAnswers, fn: resetData),
      ),
    );
  }
}
