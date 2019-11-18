import 'package:flutter/material.dart';
import 'package:app/menubar/bottombar.dart';

class NewAppBar extends StatefulWidget implements PreferredSizeWidget {
  NewAppBar({Key key}) : super(key: key);

  @override
  _NewAppBarState createState() => _NewAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}

class _NewAppBarState extends State<NewAppBar> {
  Icon cusIcon = Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        // title: customSearch,
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


