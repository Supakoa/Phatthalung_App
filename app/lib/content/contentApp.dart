import 'package:flutter/material.dart';

 class Content extends StatefulWidget {
   Content({Key key}) : super(key: key);
 
   @override
   _ContentState createState() => _ContentState();
 }
 
 class _ContentState extends State<Content> {
   static const color = const Color(0xffb74093);
   @override
   Widget build(BuildContext context) {
     return  Container(
        child: Container(
          
          child: new Text("Flutter Cheatsheet",
            style: TextStyle(
              fontSize: 20.0
            ),
          ),
        ),
     );
   }
 }