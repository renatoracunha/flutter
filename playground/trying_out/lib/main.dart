import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'O que Camila deve comprar para Renato no Jantar',
      'answers': [
        {'text': 'Hamburguer', 'score': 10},
        {'text': 'Frango Frito', 'score': 5},
        {'text': 'Pizza', 'score': 6},
        {'text': 'Shawarma', 'score': 8},
      ]
    },
    {
      'questionText': 'Qual seu animal favorito',
      'answers': [
        {'text': 'Cachorro', 'score': 10},
        {'text': 'Cavalos', 'score': 5},
        {'text': 'Lontra', 'score': 6},
        {'text': 'Peixe', 'score': 8},
      ]
    },
    {
      'questionText': 'Quantos estados tem o Brasil',
      'answers': [
        {'text': '27', 'score': 0},
        {'text': '28', 'score': 0},
        {'text': '26', 'score': 10},
        {'text': '25', 'score': 0},
      ]
    },
  ];

  var _perguntaIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _perguntaIndex = 0;
      _totalScore = 0;
    });
  }

  void _resposta(int score) {
    _totalScore += score;
    setState(() {
      _perguntaIndex++;
    });
    /*if (_perguntaIndex > _questions.length) {
      _perguntaIndex = 0;
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _perguntaIndex < _questions.length
            ? Quiz(
                perguntaIndex: _perguntaIndex,
                questions: _questions,
                resposta: _resposta,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
