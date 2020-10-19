import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHand;

  Result(this.resultScore, this.resetHand);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'your score is ' +
          resultScore.toString() +
          " and your perfomance is bad.";
    } else if (resultScore <= 12) {
      resultText = 'your score is ' +
          resultScore.toString() +
          " and your perfomance is average.";
    } else if (resultScore <= 16) {
      resultText = 'your score is ' +
          resultScore.toString() +
          " and your perfomance is good.";
    } else {
      resultText = 'your score is ' +
          resultScore.toString() +
          " and your perfomance is excellent.";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Resart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetHand,
          ),
        ],
      ),
    );
  }
}
