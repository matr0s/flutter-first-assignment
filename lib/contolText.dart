import 'package:flutter/material.dart';

import 'package:flutter_course/textFile.dart';

class Controltext extends StatefulWidget {
  @override
  _ControltextState createState() => _ControltextState();
}

class _ControltextState extends State<Controltext> {
  String _textCondent = 'Default text';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          TextFile(_textCondent),
          RaisedButton(
              child: Text('Push Me'),
              onPressed: () {
                setState(() {
                  _textCondent = 'Updated';
                });
              }),
        ],
      ),
    );
  }
}
