import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/core/layout/layout_view.dart';
class SplashScreen extends StatefulWidget {
  static const String routeName = "/";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LayOutView.routName);
    },);


  }
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/splash_background.png",fit: BoxFit.cover,);
  }
}
