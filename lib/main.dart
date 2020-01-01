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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first Own App'),
      ),
      body: RaisedButton(
        onPressed: null,
      ),
    ));
  }
}
