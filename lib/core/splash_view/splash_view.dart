import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/core/layout/layout_view.dart';
import 'package:islami_app/core/setting_provider.dart';
import 'package:provider/provider.dart';
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
    var provider = Provider.of<SettingsProvider>(context);
    return Image.asset(provider.getSplashBackground(),fit: BoxFit.cover,);
  }
}
