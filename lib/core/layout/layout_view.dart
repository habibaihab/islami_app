import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadith/hadith_view.dart';
import 'package:islami_app/moduls/quran/quran_view.dart';
import 'package:islami_app/moduls/radio/radio_view.dart';
import 'package:islami_app/moduls/sebha/sebha_view.dart';
import 'package:islami_app/moduls/settings/settings_view.dart';
class LayOutView extends StatefulWidget {
  static const String routName = "layouts";

  const LayOutView({super.key});

  @override
  State<LayOutView> createState() => _LayOutViewState();
}

class _LayOutViewState extends State<LayOutView> {
  int selectedIndex = 0;

  List<Widget> screensList =[
    const RadioView(),
    const SebhaView(),
    const HadithView(),
    const QuranView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image:DecorationImage(
            image: AssetImage("assets/images/home_background.png"),
            fit: BoxFit.cover,
          ) ),
      child: Scaffold(
        appBar: AppBar(

           title: const Text("إسلامي",

          ),
          centerTitle: true,
        ),
        body: screensList[selectedIndex] ,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index){
            setState(() {
              selectedIndex = index;
            });

          },

          items: const [
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/icons/radio.png"),),
              label: "Radio",
            ),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/icons/sebha_blue.png"),),
              label: "Sebha",
            ),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/icons/quran-quran-svgrepo-com.png"),),
              label: "Hadith",
            ),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/icons/moshaf_gold.png"),),
              label: "Quran",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
                label: "Settings"
            ),

          ],
        ),
      ),
    );
  }
}
