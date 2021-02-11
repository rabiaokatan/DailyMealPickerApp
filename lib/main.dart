import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.teal[200],
          centerTitle: true,
          title: Text(
            'BUGÜN NE YESEM?',
            style: TextStyle(color: Colors.teal[800]),
          ),
        ),
        body: FoodMenuPicker(),
      ),
    );
  }
}

class FoodMenuPicker extends StatefulWidget {
  @override
  _FoodMenuPickerState createState() => _FoodMenuPickerState();
}

class _FoodMenuPickerState extends State<FoodMenuPicker> {
  int soupNum = 0;
  int mainCourseNum = 0;
  int mainCourse2Num = 0;
  int dessertNum = 0;

  List<String>soupName=[
   'Mercimek Çorbası',
   'Tavuk suyu Çorbası',
   'Yayla Çorbası'
  ];
  List<String>mainCourseName=[
    'Fırında Tavuk',
    'Nohut',
    'Kuru fasulye'
  ];
  List<String>mainCourse2Name=[
    'Pirinç Pilavı',
    'Bulgur Pilavı',
    'Garnitürlü Pirinç Pilavı'  
  ];
  List<String>dessertName=[
    'Sade Muhallebi',
    'Revani',
    'Çikolatalı Mozaik Pasta'
  ];

  void randomFood() {
    setState(() {
      soupNum = Random().nextInt(3);
      mainCourseNum = Random().nextInt(3);
      mainCourse2Num = Random().nextInt(3);
      dessertNum = Random().nextInt(3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.teal[200],
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/images/soup_$soupNum.jpg'),
              ),
            ),
            Text(
            soupName[soupNum],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child:
                    Image.asset('assets/images/mainCourse_$mainCourseNum.jpg'),
              ),
            ),
            Text(
            mainCourseName[mainCourseNum],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                    'assets/images/mainCourse2_$mainCourse2Num.jpg'),
              ),
            ),
          Text(
            mainCourse2Name[mainCourse2Num],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/images/dessert_$dessertNum.jpg'),
              ),
            ),
          Text(
            dessertName[dessertNum],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
            RaisedButton(
              onPressed: randomFood,
              child: Text('Yenile', style: TextStyle(fontSize: 20, color: Colors.white),),
              color: Colors.teal[700],
            ),
          ],
        ),
      ),
    );
  }
}
