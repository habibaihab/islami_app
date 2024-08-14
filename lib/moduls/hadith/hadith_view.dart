import 'package:flutter/material.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Hadith View" , style: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: "ElMessiri",
        fontSize: 50,
      ),),

    );
  }
}
