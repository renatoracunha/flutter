import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function resposta;
  final int perguntaIndex;

  Quiz({
    @required this.questions,
    @required this.resposta,
    @required this.perguntaIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[perguntaIndex]['questionText'],
        ),
        ...(questions[perguntaIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => resposta(answer['score']), answer['text']);
        }).toList()

        // Answer(_reposta),
        // Answer(_reposta),
      ],
    );
  }
}
