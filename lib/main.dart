import 'package:flutter/material.dart';
import 'package:beebom_clone/pages/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF212121),
        accentColor: Colors.lightBlue,
        backgroundColor: Colors.black
      ),
      home: MyHomePage(),
    );
  }
}


