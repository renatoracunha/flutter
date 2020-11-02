import 'package:flutter/material.dart';

class ChangeableText extends StatelessWidget {
  final String currentText;

  ChangeableText(this.currentText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        currentText,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
