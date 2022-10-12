import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question({required this.questionText, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      margin: EdgeInsets.all(12),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 33, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}
