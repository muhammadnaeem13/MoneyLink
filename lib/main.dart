import 'package:flutter/material.dart';
import 'package:money_link/startingpage/startupPage.dart';

import 'homepage/homescreen.dart';
import 'login/splshlogin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.lightBlue,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: splash_login(),
    );
  }
}
