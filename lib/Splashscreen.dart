

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:study/LoginPage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
   
    super.initState();
     Timer(const Duration(seconds: 3), () { 
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
    });

    
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.grey,
      body: SafeArea(
      
        child: Center(
          child: Text('Creative Apps',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.amber
          ),),
          
        ),
      ),
    );
  }







}