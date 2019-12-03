import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:app/menubar/searchingPage.dart';
import 'package:carousel_slider/carousel_slider.dart';

const _user = <Widget>[
  ListTile(
    title: Text('_username'),
  ),
  Divider(),
  ListTile(
    title: Text('data'),
  )
];

class MyHome extends StatefulWidget {
  MyHome({Key key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://clib.psu.ac.th/southerninfo/storages/pictures/Zebra_Dove/Wat_Khuha_Sawan/DSC_1079.JPG',
    'http://district.cdd.go.th/muanglung/wp-content/uploads/sites/434/2017/03/IMG_7381-1024x576.jpg',
    'https://media-cdn.tripadvisor.com/media/photo-s/09/09/9d/f4/caption.jpg',
    'https://www.jwkash.com/wp-content/uploads/2016/08/Pink-Lotus-Swamp.jpg',
    'https://th.readme.me/f/16189/5acf2d644c1cf47782e107f8.jpg'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //  padding: EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
          carouselSlider = CarouselSlider(
            height: 200.0,
            initialPage: 0,
            enlargeCenterPage: true,
            autoPlay: true,
            reverse: false,
            enableInfiniteScroll: true,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayAnimationDuration: Duration(milliseconds: 7000),
            pauseAutoPlayOnTouch: Duration(seconds: 10),
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },
            items: imgList.map((imgUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    ),
                    child: Image.network(
                      imgUrl,
                      fit: BoxFit.fill,
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(imgList, (index, url) {
              return Container(
                width: 5.0,
                height: 5.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index ? Colors.black : Colors.grey,
                ),
              );
            }),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.topCenter,
              child: Text(" แนะนำสถานที่เที่ยวจังหวัดพัทลุง ",
                  style: TextStyle(fontSize: 20)),
              height: 40),
          Column(
            children: <Widget>[
              Text("ท่าเรือ"),
              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[ListView(), ListView()],
                ),
              )
            ],
          ),
          Container(color: Colors.green, height: 150,
              child: ListView(children: _user,),
          ),
          Container(color: Colors.black, height: 150),
          Container(color: Colors.blue, height: 150),
        ],
      ),
    );
  }
}

Card_buildCardListView() {
  return Card(
    child: Image.network(
        'https://clib.psu.ac.th/southerninfo/storages/pictures/Zebra_Dove/Wat_Khuha_Sawan/DSC_1079.JPG'),
  );
}
