
import 'package:flutter/material.dart';
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
          fontFamily: 'Kanit',
          backgroundColor: Color.fromARGB(255, 28,94,113),
          
      ),
      home: MyLogin(),

      // BottomBar(),
    );
  }
}



