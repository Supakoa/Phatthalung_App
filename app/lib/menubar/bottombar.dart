import 'package:flutter/material.dart';
import 'package:app/content/MyHome.dart';
import 'package:app/content/MyMap.dart';
import 'package:app/content/MyProfile.dart';
import 'package:app/content/MyPromotion.dart';
import 'package:app/menubar/searchingPage.dart';
class BottomBar extends StatefulWidget implements PreferredSizeWidget {
  BottomBar({Key key}) : super(key: key);

  double get height => null;

  @override
  _BottomBarState createState() => _BottomBarState();


  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(height);}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 1;
  
  final List<Widget> _childred =[
    MyMap(),
    MyHome(), 
    MyPromotion(), 
    MyProfile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewAppBar(),
      body: _childred[_selectedIndex] ,
            bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                  color: Colors.lightBlue,
                  size: 25.0,),
                title: Text('แผนที่'),
              ),
              // item 0
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.lightBlue,
                  size: 30.0,
                  ),
                title: Text('หน้าแรก'),
              ),
              // item 1
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_offer,
                  color: Colors.lightBlue,
                  size: 25.0,
                ),
                title: Text('โปรโมชั่น'),
              ),
              // item 2
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.lightBlue,
                  size: 25.0,
                ),
                title: Text('โปรไฟล์'),
              ),
              // item 3
            ],
            currentIndex: _selectedIndex, //intem 1
            selectedItemColor: Colors.blue,
            onTap: _onItemTapped,
          ),
          );
        }
      }
      

