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
        // appBar: AppBar(
        //   title: Text("Travel to Phathalung",
        //       style: TextStyle(color: Colors.white)),
        //   backgroundColor: Color.fromARGB(255, 70, 121, 136),
        // ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 21, 89, 108),
            Color.fromARGB(255, 21, 89, 108),
          ])),
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
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
              Spacer(),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  color: Colors.white,
                  child: new TextFormField(
                    autofocus: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'อีเมล',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  color: Colors.white,
                  child: new TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: 'รหัสผ่าน',
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.vpn_key,
                            color: Colors.grey,
                          ))),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Chip(
                    label: Text(
                      'ลืมรหัสผ่าน?',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.blue,
                    elevation: 4,
                    padding: EdgeInsets.all(4),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: RaisedButton(
                  child: Text(
                    'เข้าสู่ระบบ',
                    style: TextStyle(fontSize: 20),
                  ),
                  color: Color.fromARGB(255, 92, 136, 150),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomBar(),
                      ),
                    );
                  },
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    height: 1,
                    width: 135,
                  ),
                  Text(
                    ' หรือ ',
                    style: TextStyle(fontSize: 25),
                  ),
                  Container(
                    color: Colors.white,
                    height: 1,
                    width: 135,
                  ),
                ],
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
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
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
              Spacer()
            ],
          ),
        ));
  }
}
