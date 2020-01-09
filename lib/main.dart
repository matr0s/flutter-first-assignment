// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import './textcontrol.dart';
import './textmanager.dart';

void main() {
  runApp(MyOwnApp());
}

class MyOwnApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyOwnApp();
  }
}

class _MyOwnApp extends State<MyOwnApp> {
  List _textOptions = ['First label', 'Second label', 'Third label'];
  String _textOption = 'Here is the default text';
 int _clickCounter = 0;

  void textHandler() {
    setState(() {
      _textOption = _textOptions[_clickCounter];
    });
    _clickCounter += 1;
    print('Clicked');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first Own App'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            TextManager(_textOption, _textOptions),
            TextControl(_textOptions, textHandler, _clickCounter),
          ],
        ),
      ),
    ));
  }
}
