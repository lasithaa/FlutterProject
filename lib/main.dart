import 'package:flutter/material.dart';
import 'package:flutter_application_4/qrcode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.black, primarySwatch: Colors.green),
      home: const QRCode(),
    );
  }
}
