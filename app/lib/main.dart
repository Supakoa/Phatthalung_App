import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phatthalung',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Phatthalung'),
        ),
        body: Center(
          child: Text('Welcome to Phatthalung'),
        ),
      ),
    );
  }
}