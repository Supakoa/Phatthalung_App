import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


String _namef,_namel;
String _pass,_gen;
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
        title: Text("สมัครสมาชิก", style: TextStyle(color: Colors.white,fontSize: 30)),
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
                height: 150,
                child: Text(
                  'สมัครสมาชิก',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              new TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'ชื่อ',
                ),
                onChanged: (value) => _namef = value.trim(),
              ),
              new TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.short_text),
                  hintText: 'นามสกุล',
                ),
                onChanged: (value) => _namef = value.trim(),
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
                      onPressed: (){
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
      return Align(
        alignment: Alignment.centerRight,
        child: DropdownButton<String>(
          isDense: false,
          isExpanded: true,
          icon: Icon(Icons.arrow_drop_down),
          items: [
            DropdownMenuItem<String>(
              child: Text('เพศชาย'),
              value: 'men',
            ),
            DropdownMenuItem<String>(
              child: Text('เพศหญิง'),
              value: 'women',
            ),
            DropdownMenuItem<String>(
              child: Text('เพศทางเลือก'),
              value: 'LGBT',
            ),
          ],
          onChanged: (String value) {
            setState(() {
              _value = value;
            });
          },
          hint: Text('เพศ'),
          value: _value,
        ),
      );
    }
  }


// User(_users);
void sign_up(){
  print(_namef);
  print(_pass);
  print(_tel);
  print(_age);
  print(_email);
  print(date);
}