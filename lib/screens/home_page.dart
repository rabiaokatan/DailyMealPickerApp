import 'dart:math';

import 'package:daily_food_menu_picker/models/soup.dart';
import 'package:daily_food_menu_picker/models/main_course.dart';
import 'package:daily_food_menu_picker/models/main_course2.dart';
import 'package:daily_food_menu_picker/models/dessert.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int soupNum = 0;
  int mainCourseNum = 0;
  int mainCourse2Num = 0;
  int dessertNum = 0;

  void randomFood() {
    setState(() {
      soupNum = Random().nextInt(3);
      mainCourseNum = Random().nextInt(3);
      mainCourse2Num = Random().nextInt(3);
      dessertNum = Random().nextInt(3);
    });
  }

  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  Widget mealContainer({String url, String image, String name}) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            _launchURL(url);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(image, height: 150, width: 150),
          ),
        ),
        Text(
          name,
          style: TextStyle(fontSize: 20),
        ),
        Container(
          width: 200,
          child: Divider(
            height: 5,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Card(
          elevation: 20.0,
          color: Colors.teal[200],
          child: Column(
            children: <Widget>[
              //soup
              mealContainer(
                  url: soups[soupNum].recipeUrl,
                  name: soups[soupNum].name,
                  image: soups[soupNum].image),
              //main course
              mealContainer(
                  url: mainCourses[mainCourseNum].recipeUrl,
                  name: mainCourses[mainCourseNum].name,
                  image: mainCourses[mainCourseNum].image),
              //main course2
              mealContainer(
                  url: mainCourses2[mainCourse2Num].recipeUrl,
                  name: mainCourses2[mainCourse2Num].name,
                  image: mainCourses2[mainCourse2Num].image),
              //dessert
              mealContainer(
                  url: desserts[dessertNum].recipeUrl,
                  name: desserts[dessertNum].name,
                  image: desserts[dessertNum].image),
                  
              Padding(
                padding: const EdgeInsets.only(top:8, bottom:8),
                child: RaisedButton(
                  onPressed: randomFood,
                  child: Text(
                    'Yenile',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  color: Colors.teal[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
