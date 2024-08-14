import 'package:flutter/material.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Sebha View" , style: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: "ElMessiri",
        fontSize: 50,
      ),),

    );
  }
}
