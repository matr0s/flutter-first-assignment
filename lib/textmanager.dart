import 'package:flutter/material.dart';

class TextManager extends StatelessWidget {
  final String defaultText;
  final List textList;

  TextManager(this.defaultText, this.textList);

  @override
  Widget build(BuildContext context) {
    return 
      Text(defaultText,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center);
  }
}
