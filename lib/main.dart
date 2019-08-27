import 'package:flutter/material.dart';
import 'package:kubico/src/pages/login.dart';
import 'package:kubico/src/pages/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: Splash(),
    );
  }
}


