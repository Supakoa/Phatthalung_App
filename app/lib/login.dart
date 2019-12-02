import 'package:flutter/material.dart';
import 'package:app/menubar/bottombar.dart';
import 'package:app/models/User.dart';
import 'package:intl/intl.dart';
import 'regis.dart';

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
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text("Travel to Phathalung",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Color.fromARGB(255, 70, 121, 136),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 54, 145, 136),
            Color.fromARGB(255, 70, 121, 136)
          ])),
          padding: EdgeInsets.all(30),
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                  height: 150,
                  width: 400,
                  color: Colors.amberAccent,
                  child: Text(
                    'เข้าสู่ระบบ',
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 20.0,
              ),
              new TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'E-mail',
                ),
              ),
              new TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.vpn_key),
                  hintText: 'รหัสผ่าน',
                ),
              ),
              Container(
                  height: 150,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          child: Text(
                            'เข้าสู่ระบบ',
                            style: TextStyle(fontSize: 20),
                          ),
                          color: Color.fromARGB(255, 70, 121, 136),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomBar(),
                              ),
                            );
                          },
                        ),
                      ])),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      '----------------',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      ' หรือ ',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      '-----------------',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'ลงทะเบียน  ',
                          style: TextStyle(fontSize: 15),
                        ),
                        FlatButton(
                          child: Text(
                            'สมัครสมาชิค',
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          onPressed: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => register()),
                            );
                          },
                        ),
                      ])),
            ],
          ),
        ));
  }
}

