import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String title = 'Light';
  Color color = Colors.white;
  String text = 'Switch to Dark';
  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Light and Dark',
      home: Scaffold(
        appBar: AppBar(
          title: Text(title, style: TextStyle(color: textColor),),
          centerTitle: true,
          elevation: 0,
          backgroundColor: color,
        ),
        body: Center(
          child: RaisedButton(
            child: Text(text),
            onPressed: () {
              setState(() {
                title == 'Light' ? title = 'Dark' : title = 'Light';
                textColor == Colors.black ? textColor = Colors.white : textColor = Colors.black;
                text == 'Switch to Dark' ? text = 'Switch to Light' : text = 'Switch to Dark';
                color == Colors.black ? color = Colors.white : color = Colors.black;
              });
            },
          ),
        ),
        backgroundColor: color,
      ),
    );
  }
}
