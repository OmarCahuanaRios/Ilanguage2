import 'package:flutter/material.dart';
import 'package:ilanguage/src/login.dart';
import 'package:ilanguage/src/register.dart';

void main() => runApp(MyRegister());

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

class MyRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Register',
      home: RegisterForm(),
    );
  }
}
