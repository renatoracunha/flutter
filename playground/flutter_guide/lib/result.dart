import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'Pontuação baixa! \n $resultScore pontos!';
    } else {
      resultText = 'Parabéns!!! \n $resultScore pontos!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text('Reiniciar Teste'),
            color: Colors.blue,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
