// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import './textControl.dart';
import './changeableText.dart';

void main() {
  runApp(FirstExerciseApp());
}

class FirstExerciseApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstExerciseAppState();
  }
}

class _FirstExerciseAppState extends State<FirstExerciseApp> {
  final _texts = const ['Question N1', 'Question N2', 'Question N3'];

  var _textIndex = 0;

  void _textCounter() {
    setState(() {
      _textIndex++;
      if (_textIndex > 2) _textIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'First Exercise',
        ),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        ChangeableText(
          _texts[_textIndex],
        ),
        TextControl(
          _textCounter,
          // _textIndex,
          //_texts,
        ),
      ]),
    ));
  }
}
