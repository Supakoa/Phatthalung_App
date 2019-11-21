import 'package:flutter/material.dart';


class NewAppBar extends StatefulWidget implements PreferredSizeWidget {

  NewAppBar({Key key}): super(key: key);

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
          backgroundColor: Color.fromARGB(255, 70, 121, 136),
          title: Center(
            child: Text('Phatthalung') 
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
        ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
} 


