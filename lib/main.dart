import 'package:attendance/auth/login.dart';
import 'package:attendance/auth/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendace',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const  Register(),
    );
  }
}

