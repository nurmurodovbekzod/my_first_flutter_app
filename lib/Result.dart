import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final VoidCallback fn;

  const Result({
    super.key,
    required this.result,
    required this.fn,
  });

  String get resultPhrase {
    var Izox = "Nimadir";

    if (result == 1) {
      Izox = "Dabdala";
    } else if (result == 2) {
      Izox = "Qoniqarli";
    } else if (result == 3) {
      Izox = "Yaxshi ☺";
    } else if (result == 4) {
      Izox = "A'lo";
    }

    return Izox;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Your result is $result",
            style: TextStyle(fontSize: 28, color: Colors.orange),
          ),
          SizedBox(
            height: 33,
          ),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28, color: Colors.red),
          ),
          SizedBox(
            height: 33,
          ),
          ElevatedButton(
            onPressed: fn,
            style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll<Color>(Colors.lightBlue),
            ),
            child: Text(
              "Retry",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
