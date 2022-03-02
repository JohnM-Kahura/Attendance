
import 'package:attendance/home/home.dart';
import 'package:attendance/utils/local_auth.dart';
import 'package:flutter/material.dart';

class FingerPrint extends StatefulWidget {
  const FingerPrint({ Key? key }) : super(key: key);

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  @override
  void initState() async{
  
    super.initState();
    final isAuthenticated =await LocalAuthApi.authenticate();
    if(isAuthenticated){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const Home()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}