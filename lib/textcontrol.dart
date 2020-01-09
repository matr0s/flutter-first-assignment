import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final defaultContent = 'Default text';
  final textContent;
  final Function textManager;
  int counter;
  TextControl(this.textContent, this.textManager, this.counter);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      textColor: Colors.white,
      child: Text('Click on Me'),
      onPressed: textManager,
    );
  }
}
