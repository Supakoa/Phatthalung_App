import 'package:flutter/material.dart';


class NewAppBar extends StatefulWidget implements PreferredSizeWidget {
  Text txt;

  NewAppBar({Key key}): super(key: key);

  @override
  _NewAppBarState createState() => _NewAppBarState(txt);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);

  // throw from main.dart txt to _NewAppBarState class
  void setTxt(Text txt) {
    this.txt = txt;
  }

}

class _NewAppBarState extends State<NewAppBar> {
  Icon cusIcon = Icon(Icons.search);
  Text txt;

  // setting txt
  _NewAppBarState(Text txt) {
    this.txt = txt;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: txt,
        // backgroundColor: Color.fromRGBO(99, 150, 168, 0),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              // setState(() {
              //   // onSearch();
              // });
            },
            icon: cusIcon,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
} 


