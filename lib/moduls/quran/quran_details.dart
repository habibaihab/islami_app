import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/setting_provider.dart';
import 'package:islami_app/moduls/quran/quran_view.dart';
import 'package:islami_app/moduls/settings/settings_view.dart';
import 'package:provider/provider.dart';

class QuranDetails extends StatefulWidget {
  static String routeName = "QuranDetails";
  const QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute
        .of(context)
        ?.settings
        .arguments as SuraData;

   if(versesList.isEmpty) loadQuran(data.suraNumber);
    var theme = Theme.of(context);
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage(provider.getBackgroundImage(),),
            fit: BoxFit.cover,
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.only(
              top: 30, left: 30, right: 30, bottom: 80),
          padding: const EdgeInsets.only(
              top: 30, left: 30, right: 30, bottom: 80),
          decoration: BoxDecoration(
            color: provider.isDark() ? const Color(0xFF141A2E).withOpacity(0.85): const Color(0xFFF8F8F8).withOpacity(0.85),
            borderRadius: BorderRadius.circular(25),

          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " سورة${data.suraName}", style: theme.textTheme.bodyMedium?.copyWith(
                    color: provider.isDark() ? theme.primaryColorDark : Colors.black,
                  ),
                  ),
                  const SizedBox(width: 15,),
                   Icon(Icons.play_circle_fill_rounded,
                    color: provider.isDark() ? theme.primaryColorDark : Colors.black,
                  ),
                ],
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) =>
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "{${index + 1}}${versesList[index]}",
                        style: theme.textTheme.bodySmall?.copyWith(color: provider.isDark() ?
                        theme.primaryColorDark
                            : Colors.black,),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  itemCount: versesList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  List<String> versesList = [];
  Future<void> loadQuran(String suraNumber) async {
    String content = await rootBundle.loadString("assets/files/$suraNumber.txt");
    versesList = content.split('\n').where((verse) => verse.trim().isNotEmpty).toList();
    setState(() {});
  }
}
