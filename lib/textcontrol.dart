import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  //final defaultContent = 'Default text';
  Function textManager;
  List textContent;
  int counter;
  TextControl(this.textContent, this.counter);


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
