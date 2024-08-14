import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/quran/quran_view.dart';

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
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home_background.png"),
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
            color: const Color(0xFFF8F8F8).withOpacity(0.85),
            borderRadius: BorderRadius.circular(25),

          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " سورة${data.suraName}", style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(width: 15,),
                  const Icon(Icons.play_circle_fill_rounded),
                ],
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) =>
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "{${index + 1}}${versesList[index]}",
                        style: theme.textTheme.bodySmall,
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
