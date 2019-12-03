import 'package:flutter/material.dart';

class AlertBox extends StatefulWidget {
  AlertBox({Key key}) : super(key: key);

  @override
  _AlertBoxState createState() => _AlertBoxState();
}

class _AlertBoxState extends State<AlertBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text('อีเมลหรือรหัสผ่านไม่ถูกต้อง !!',
          style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontSize: 20)),
      content: Text('กรุณาตรวจสอบอีกครั้ง', style: TextStyle(color: Colors.grey)),
      actions: <Widget>[
        RaisedButton(
            color: Colors.redAccent,
            child: Text('ยืนยัน', style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.pop(context);
            })
      ],
    );
  }
}

class AlertBoxseccond extends StatefulWidget {
  AlertBoxseccond({Key key}) : super(key: key);

  @override
  _AlertBoxseccondState createState() => _AlertBoxseccondState();
}

class _AlertBoxseccondState extends State<AlertBoxseccond> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text('กรุณากรอกข้อมูล !!',
          style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontSize: 20)),
      content: Text('กรุณากรอก อีเมลและรหัสผ่านของท่าน', style: TextStyle(color: Colors.grey)),
      actions: <Widget>[
        RaisedButton(
            color: Colors.redAccent,
            child: Text('ยืนยัน', style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.pop(context);
            })
      ],
    );
  }
}
