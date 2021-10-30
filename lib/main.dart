import 'package:flutter/material.dart';
import 'package:ilanguage/src/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Login',
      home: MyAppForm(),
    );
  }
}
