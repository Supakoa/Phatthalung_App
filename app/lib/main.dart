
import 'package:flutter/material.dart';
import 'package:app/menubar/bottombar.dart';
import 'package:app/login.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600],
          fontFamily: 'Montserrat',
      ),
      home: MyLogin(),

      // BottomBar(),
    );
  }
}



