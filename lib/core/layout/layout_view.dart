import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/core/setting_provider.dart';
import 'package:islami_app/moduls/hadith/hadith_view.dart';
import 'package:islami_app/moduls/quran/quran_view.dart';
import 'package:islami_app/moduls/radio/radio_view.dart';
import 'package:islami_app/moduls/sebha/sebha_view.dart';
import 'package:islami_app/moduls/settings/settings_view.dart';
import 'package:provider/provider.dart';
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
    var lang = AppLocalizations.of(context)!;
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration:  BoxDecoration(
          image:DecorationImage(
            image: AssetImage(provider.getBackgroundImage()),
            fit: BoxFit.cover,
          ) ),
      child: Scaffold(
        appBar: AppBar(

           title:Text(lang.islami,

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

          items:  [
            BottomNavigationBarItem(icon:const ImageIcon(AssetImage("assets/icons/radio.png"),),
              label: lang.radio,
            ),
            BottomNavigationBarItem(icon:const ImageIcon(AssetImage("assets/icons/sebha_blue.png"),),
              label: lang.sebha,
            ),
            BottomNavigationBarItem(icon:const ImageIcon(AssetImage("assets/icons/quran-quran-svgrepo-com.png"),),
              label: lang.hadith,
            ),
            BottomNavigationBarItem(icon:const ImageIcon(AssetImage("assets/icons/moshaf_gold.png"),),
              label: lang.quran,
            ),
            BottomNavigationBarItem(icon: const Icon(Icons.settings),
                label: lang.settings,
            ),

          ],
        ),
      ),
    );
  }
}
