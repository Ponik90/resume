import 'dart:async';

import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, 'homescreen');
    },);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Column(
          children: [
            Image.asset("assets/image/welcome.png",height: 200,width: 200,),
            Image.asset("assets/image/ganesha.png")
          ],
        ),

        backgroundColor: Colors.black,

      ),
    );
  }
}
