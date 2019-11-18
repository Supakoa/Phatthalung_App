import 'package:flutter/material.dart';
import 'package:app/menubar/bottombar.dart';

class SearchingPage extends StatefulWidget {
  @override
  _SearchingPageState createState() => _SearchingPageState();
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
    return Scaffold(
      appBar: AppBar(
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
      ),
      bottomNav  igationBar: BottomBar(),
    );
  }
}


