import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function selectHandler;
//  final String answerText;

  TextControl(this.selectHandler);
  //TextControl(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Change Question'),
        onPressed: selectHandler,
      ),
    );
  }
}
