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
                child: Text('เข้าสู่ระบบ', style: TextStyle(fontSize: 30),textAlign: TextAlign.center,)
              ),
              new TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Username',
                ),
              ),
              new TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.vpn_key),
                  hintText: 'Password',
                  ),
              ),
              Container(
                  height: 150,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    RaisedButton(
                      child: Text('เข้าสู่ระบบ'),
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
                        Text('------------------------',style: TextStyle(fontSize: 15),),
                        Text(' หรือ ',style: TextStyle(fontSize: 25),),
                        Text('------------------------',style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
              Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('ลงทะเบียน  ',style: TextStyle(fontSize: 15),),
                    FlatButton(
                      child: Text('สมัครสมาชิค',style: TextStyle(color: Colors.blue,fontSize: 20),),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => register()),
                        );
                      },
                    ),
                  ])),
            ],
          ),
        ));
  }
}

class register extends StatelessWidget {
  const register({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title:
            Text("ลงทะเบียน", style: TextStyle(color: Colors.white)),
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
              child: Text('สมัครสมาชิค',style: TextStyle(fontSize: 25,color: Colors.white),textAlign: TextAlign.center,),
            ),
              new TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'ชื่อผู้ใช',
                ),
              ),
              new TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.vpn_key),
                  hintText: 'รหัสผ่าน',
                  ),
                  scrollPadding: EdgeInsets.all(10),
              ),
              new TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'อีเมล',
                ),
              ),
              new TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.vpn_key),
                  hintText: 'เบอร์โทรศัพท์',
                  ),
              ),
          ],
        )
      ),
    );
  }
}
