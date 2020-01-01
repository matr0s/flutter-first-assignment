// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

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
  final textOptions = ['First label', 'Second label', 'Third label'];
  String textOption = 'Here is the default text';
  int clickCounter = 0;

  void textHandler() {
    setState(() {
      textOption = textOptions[clickCounter];
    });
    clickCounter += 1;
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
            Text(textOption,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Click on Me'),
              onPressed: textHandler,
            ),
          ],
        ),
      ),
    ));
  }
}
