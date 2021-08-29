import 'package:flutter/material.dart';
import 'package:icash/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xFFF2F3F7),
        primarySwatch: Colors.green,
      ),
      home: LoginScreen(),
    );
  }
}
