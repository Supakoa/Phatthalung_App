import 'package:flutter/material.dart';
import 'package:app/menubar/searchingPage.dart';

 class MyHome extends StatefulWidget {
   MyHome({Key key}) : super(key: key);
 
   @override
   _MyHomeState createState() => _MyHomeState();
 }
 
 class _MyHomeState extends State<MyHome> {
   @override
   Widget build(BuildContext context) {
     return Container(
       padding: EdgeInsets.all(20),
       child: Center(
         child: Text('Home'),
       ),
     );
   }
 }