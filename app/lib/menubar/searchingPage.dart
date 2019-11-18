import 'package:flutter/material.dart';


class NewAppBar extends StatelessWidget implements PreferredSizeWidget {
  NewAppBar({Key key}) : super(key: key);

  Icon cusIcon = Icon(Icons.search);
  Widget customSearch = Text('Home');

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: customSearch,
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


