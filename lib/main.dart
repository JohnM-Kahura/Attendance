import 'package:attendance/auth/login.dart';
import 'package:attendance/auth/register.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendace',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const  Login(),
    );
  }
}

