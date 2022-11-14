import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/meal_details.dart';
import './screens/categories_screen.dart';
import './screens/categories_meals.dart';
import './screens/meal_details.dart';
import './screens/infoscreen.dart';
import './screens/Songsscreen.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254,229,1),
        fontFamily: 'Raleway',
        textTheme:ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(color: Color.fromRGBO(20,51,51,1)),
          bodyText2: TextStyle(color: Color.fromRGBO(20,51,51,1)),
          subtitle1:TextStyle(fontSize: 20,fontFamily: 'RobotoCondensed',fontWeight: FontWeight.bold)

        )
      ),
      home: MyHomePage(),
      routes:{
        '/categories':(ctx)=>CategoriesMeals(),
        Mealdetails.routeName :(ctx)=>Mealdetails(),
        '/info':(ctx)=>Infoscreen(),
        '/other':(ctx)=>Songsscreen()

      },
    );
  }
}

class MyHomePage extends StatefulWidget {
    @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Vineeth Classics',textAlign: TextAlign.center,)),
      ),
      body: CategoriesMeals(),
      
    );
  }
}
