import 'package:flutter/material.dart';


class SearchingPage extends StatefulWidget implements PreferredSizeWidget {

  final AppBar appBar;

  const SearchingPage({Key key, this.appBar}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
  
}

class _SearchingPageState extends State<SearchingPage> {
  Icon cusIcon = Icon(Icons.search);
  Widget customSearch = Text('Home');

  // void onSearch() {
  //   if (this.cusIcon.icon == Icons.search) {
  //     this.cusIcon = Icon(Icons.cancel);
  //     this.customSearch = TextField(
  //       textInputAction: TextInputAction.go,
  //       decoration: InputDecoration(
  //         border: InputBorder.none,
  //         hintText: 'Search...'
  //       ),
  //       style: TextStyle(
  //         color: Colors.white,
  //         fontSize: 16,
  //       ),
  //     );
  //   } else {
  //     this.cusIcon = Icon(Icons.search);
  //     this.customSearch = Text('Home');
  //   }
  // }

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
              setState(() {
                // onSearch();
              });
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
}

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


