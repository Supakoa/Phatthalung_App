import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  MyLogin({Key key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Travel to Phathalung",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Color.fromARGB(255, 70, 121, 136),
        ),
        body: ListView(children: <Widget>[
          Container(
            height: 200,
            color: Colors.redAccent,
          ),
          Container(
              color: Colors.green[50],
              child: Center(
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Color.fromARGB(1, 99, 188, 136),
                      Color.fromARGB(1, 132, 186, 201)
                    ])),
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('ยินดีตอนรับ',
                                style: TextStyle(
                                  fontSize: 55,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        buildTextFieldEmail(),
                        buildTextFieldPassword(),
                        buildButtonForget(),
                        buildButtonSignIn(),
                      ],
                    )),
              )),
          Container(
            color: Colors.blue,
            height: 200,
          )
        ]));
  }

  Container buildButtonSignIn() {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        child: Text("เข้าสู่ระบบ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color.fromARGB(
              1,
              111,
              162,
              178,
            )),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildButtonForget() {
    return Container(
        constraints: BoxConstraints.expand(
          height: 50,
          width: 150,
        ),
        child: Text("ลืมรหัสผ่าน ?",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color.fromARGB(
              1,
              111,
              162,
              178,
            )),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildTextFieldEmail() {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            decoration: InputDecoration.collapsed(
                hintText: "ชื่อผู้ใช้",
                hintStyle: TextStyle(fontSize: 18, color: Colors.black)),
            style: TextStyle(fontSize: 18, color: Colors.black)));
  }

  Container buildTextFieldPassword() {
    return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            obscureText: true,
            decoration: InputDecoration.collapsed(
                hintText: "รหัสผ่าน",
                hintStyle: TextStyle(fontSize: 18, color: Colors.black)),
            style: TextStyle(fontSize: 18, color: Colors.black)));
  }
}
