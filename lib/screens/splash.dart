import 'dart:async';
import 'package:finplan/screens/login1.dart';
import 'package:finplan/screens/sign_in.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Login1Screen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
          Center(
            child: CircularProgressIndicator(
              color: Color.fromRGBO(168,	167,	243,1),
            ),
          )
    );
  }
}

