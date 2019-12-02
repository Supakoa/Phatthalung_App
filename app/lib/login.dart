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

String _name;
String _pass;
String _email;
String _age;
String _tel;

class register extends StatelessWidget {
  const register({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("ลงทะเบียน", style: TextStyle(color: Colors.white)),
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
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: 200,
                child: Text(
                  'สมัครสมาชิก',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              new TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'ชื่อผู้ใช้',
                ),
                onChanged: (value) => _name = value.trim(),
              ),
              new TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.vpn_key),
                  hintText: 'รหัสผ่าน',
                ),
                onChanged: (value) => _pass = value.trim(),
                scrollPadding: EdgeInsets.all(10),
              ),
              new TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'E-mail',
                ),
                onChanged: (value) => _email = value.trim(),
              ),
              new TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.vpn_key),
                  hintText: 'เบอร์โทรศัพท์',
                ),
                onChanged: (value) => _tel = value.trim(),
              ),
              new TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_view_day),
                  hintText: 'อายุ',
                ),
                onChanged: (value) => _age = value.trim(),
              ),
              new Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                  child: SizedBox(
                    height: 40.0,
                    width: 300,
                    child: new RaisedButton(
                      elevation: 5.0,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.blue,
                      child: new Text('ลงทะเบียน',
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white)),
                      onPressed: sign_up,
                    ),
                  ))
            ],
          )),
    );
  }
}
void sign_up(){
  print(_name);
  print(_pass);
  print(_tel);
  print(_age);
  print(_email);
}