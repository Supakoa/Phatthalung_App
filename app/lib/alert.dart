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
      title: Text('อีเมลหรือรหัสผ่านไม่ถูกต้อง !!',
          style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontSize: 20)),
      content: Text('กรุณาตรวจสอบอีกครั้ง'),
      actions: <Widget>[
        RaisedButton(
            child: Text('OK', style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.pop(context);
            })
      ],
    );
  }
}
