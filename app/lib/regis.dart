import 'dart:convert';

import 'package:app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
final databaseReference = Firestore.instance;
final FirebaseAuth _auth = FirebaseAuth.instance;

String _namef, _namel;
String _pass, _gen;
String _email;
String _age;
String _tel;
var date = new DateTime.now();

class register extends StatelessWidget {
  const register({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("สมัครสมาชิก",
            style: TextStyle(color: Colors.white, fontSize: 30)),
        centerTitle: true,
        backgroundColor: Color(0x0ff163c46),
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 21, 89, 108),
            Color.fromARGB(255, 21, 89, 108)
          ])),
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: 100,
                child: Text(
                  'สมัครสมาชิก',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              _fieldtext(
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  'ชื่อ',
                  _namef),
              _fieldtext(
                  Icon(
                    Icons.short_text,
                    color: Colors.grey,
                  ),
                  'นามสกุล',
                  _namel),
              _fieldtext(
                  Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
                  'อีเมล',
                  _email),
              _fieldtext(
                  Icon(
                    Icons.vpn_key,
                    color: Colors.grey,
                  ),
                  'รหัสผ่าน',
                  _pass),
              _fieldtext(
                  Icon(
                    Icons.phone_iphone,
                    color: Colors.grey,
                  ),
                  'เบอร์โทรศัพท์',
                  _tel),
              _fieldtext(
                  Icon(
                    Icons.calendar_view_day,
                    color: Colors.grey,
                  ),
                  'อายุ',
                  _age),
              new Padding(
                padding: EdgeInsets.all(5),
                child: new DropdownExample(),
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
                      onPressed: () {
                        new DateFormat('dd-MM-YY').format(date);
                        sign_up();
                      },
                    ),
                  ))
            ],
          )),
    );
  }
}

_fieldtext(Icon _icon, String _hint, String _newvalue) {
  return new Padding(
    padding: EdgeInsets.all(5),
    child: new Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
      ),
      child: new TextFormField(
        style: TextStyle(color: Colors.grey, decoration: TextDecoration.none),
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: _icon,
          hintText: _hint,
          hintStyle: TextStyle(color: Colors.grey),
          // fillColor: Colors.grey,
          // focusColor: Colors.grey
        ),
        onChanged: (value) => _newvalue = value.trim(),
      ),
    ),
  );
}

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() {
    return _DropdownExampleState();
  }
}

class _DropdownExampleState extends State<DropdownExample> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
      ),
      child: DropdownButton<String>(
        style: TextStyle(color: Colors.grey,fontFamily: 'Kanit',fontWeight: FontWeight.bold,fontSize: 15),
        isDense: false,
        isExpanded: true,
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.grey,
          
        ),
        items: [
          DropdownMenuItem<String>(
            child: Text('เพศชาย'),
            value: 'Male',
          ),
          DropdownMenuItem<String>(
            child: Text('เพศหญิง'),
            value: 'Female',
          ),
          DropdownMenuItem<String>(
            child: Text('เพศทางเลือก'),
            value: 'LGBT',
          ),
        ],
        onChanged: (String value) {
          setState(() {
            _value = value;
            _gen = value;
          });
        },
        hint: Text('เพศ', style: TextStyle(color: Colors.grey)),
        value: _value,
      ),
    );
  }
}

// User(_users);
void sign_up(){
  _auth.createUserWithEmailAndPassword(email: _email,password: _pass).then((user){
    print("จัดไปวัยรุ่น ${user.user.uid}");
    var a = user.user.uid;
    User new_user = new User(
        firstName: _namef,
        email: _email,
        userID: a,
        age: _age,
        gender: _gen,
        lastName: _namel,
        password: _pass,
        province: "กรุงเทพมหานคร");

    databaseReference
        .collection("users")
        .document(user.user.uid)
        .setData(new_user.toJson())
        .then((onValue) {
      print("Gooddddd");
      var firebaseUser = FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _pass)
          .then((onValue) {
        //เข้าไปปปปปปปป
      });
    });
  });
}
