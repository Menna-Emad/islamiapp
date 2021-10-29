import 'package:flutter/material.dart';
import 'package:untitled/islamiapp.dart';

void main() {
  runApp(MyApp());
}
class MythemeData{
  static final primaryColor=Color.fromRGBO(183,147,95,1.0);
  static final selectedIcnColor=Color.fromRGBO(8, 8, 8, 1.0);
  static final unselectedIcnColor=Color.fromRGBO(255, 255, 255, 1.0);
static final colorBlack =Color.fromRGBO(5, 5, 5, 0);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
          primaryColor:MythemeData.primaryColor
        ),
      title: 'Flutter Demo',
      routes:{
        Homepage.routeName:(buildCcontext)=>Homepage(),
      }
    );
  }
}

