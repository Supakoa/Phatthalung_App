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
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 54, 145, 136),
            Color.fromARGB(255, 70, 121, 136)
          ])),
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom:70),
                child: Text('เข้าสู่ระบบ', style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
              ),
              new TextFormField(
                decoration: InputDecoration(icon: Icon(Icons.person)),
              ),
              new TextFormField(
                decoration: InputDecoration(icon: Icon(Icons.vpn_key)),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 50,top: 20),
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
                        Text(' หรือ ',style: TextStyle(fontSize: 15),),
                        Text('------------------------',style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
              Container(
                  margin: EdgeInsets.only(top: 100),
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
              
          ],
        )
      ),
    );
  }
}
