import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMap extends StatefulWidget {
  MyMap({Key key}) : super(key: key);
  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  //static const LatLng centerMap = const LatLng(13.776296, 100.5062103);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: My_Map(),
    );
  }

  // Widget build(BuildContext context) {
  //   return Container(
  //      child: Text('แผนที่'),
  //   );
  // }
  Widget My_Map() {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(37.42796133580664, -122.085749655962),
        zoom: 17.0,
      ),
    );
  }
}
