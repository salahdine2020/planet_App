import 'package:flutter/material.dart';
import 'package:planet_app/pages/plants_pages.dart';


// this app mayb it's gonna be book app review or planet app review filme app review ........
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Colors.white
      ),
      home: PlantsPage(),
    );
  }
}