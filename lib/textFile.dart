import 'package:flutter/material.dart';

class TextFile extends StatelessWidget {
  final String textUpdated;

  TextFile(this.textUpdated);
  @override
  Widget build(BuildContext context) {
    return Text(textUpdated);
  }
}
