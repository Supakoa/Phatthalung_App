import 'package:app/content/MyHome.dart';
import 'package:flutter/material.dart';
import 'package:app/menubar/searchingPage.dart';
import 'package:app/menubar/bottombar.dart';
import 'package:app/content/MyHome.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // setting  title to appBar
    Widget customSearch = Text('Patalung Awesome');
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
        body: Container(
            child: Home(),
            decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 93,181,207),
                Color.fromARGB(255, 61,137,147),
              ]
            )
          ),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}



