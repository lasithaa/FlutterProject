import 'package:flutter/material.dart';

import 'pages/HomePage.dart';
import 'pages/create_account.dart';
import 'pages/gym_first.dart';
import 'pages/loginpage.dart';
import 'pages/splash.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GymFirstPage(),
      theme: ThemeData(primarySwatch: Colors.lightGreen),
    );



  }
}
