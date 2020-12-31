import 'package:flutter/material.dart';
import 'package:covid19_apps/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      color: Colors.blue,
    );
  }
}
