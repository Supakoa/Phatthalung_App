import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget implements PreferredSizeWidget {
  BottomBar({Key key}) : super(key: key);

  double get height => null;

  @override
  _BottomBarState createState() => _BottomBarState();


  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(height);}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 2;
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
         BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.lightBlue,
            size: 25.0,),
          title: Text('ค้นหา'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.explore,
            color: Colors.lightBlue,
            size: 25.0,),
          title: Text('แผนที่'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.lightBlue,
            size: 30.0,
            ),
          title: Text('หน้าแรก'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.local_offer,
            color: Colors.lightBlue,
            size: 25.0,
          ),
          title: Text('โปรโมชั่น'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.lightBlue,
            size: 25.0,
          ),
          title: Text('โปรไฟล์')
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }
}

