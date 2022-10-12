import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final VoidCallback callback;

  const Answer({super.key, required this.answer , required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(32 ,6,32 ,6),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: callback,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.lightBlue),
        ),
        child: Text(
          answer,
          style: TextStyle(color: Colors.white , fontSize: 22),
        ),
      ),
    );
  }
}
