import 'package:flutter/material.dart';
import 'package:app/menubar/bottombar.dart';


class MyLogin extends StatefulWidget {
  MyLogin({Key key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
 

double _count = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Travel to Phathalung",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Color.fromARGB(255, 70, 121, 136),
        ),
        body: Container(
          decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromARGB(255,70, 121, 136), Color.fromARGB(255, 70, 121, 136)])),
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Center(
                child: Text('เข้าสู่ระบบ', style: TextStyle(fontSize: 30)),
              ),
            new TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person)

                ) ,
            ),
            new TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.vpn_key)

                ) ,
            ),
            
            IconButton(
              icon: Icon(Icons.plus_one),
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => BottomBar(),
                  ));
                  _count += 10;
                });
              },
            ),
            IconButton(
              
              icon: Icon(Icons.restore),
              tooltip: 'Increase volume by 10',
              onPressed: () {
                setState(() {
                  _count = 0.0;
                });
              },
            ),
            Text('Volume : $_count')
          ],
          ),
        )
    );
  }
}

