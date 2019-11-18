import 'package:flutter/material.dart';
import 'package:app/menubar/searchingPage.dart';


void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {

    Widget customSearch = Text('Home');

    return MaterialApp(
      title: 'Appbar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: NewAppBar(
          
        ),
        // body: Center(),
        // bottomNavigationBar: BottomBar(),
      ),
    );
  }
}



