import 'package:flutter/material.dart';
import 'package:app/menubar/searchingPage.dart';
import 'package:app/menubar/bottombar.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget customSearch = Text('Home');
    NewAppBar newAppBar = NewAppBar();
    newAppBar.setTxt(customSearch);

    return MaterialApp(
      title: 'Appbar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: newAppBar,
        // body: Center(),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}



