import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:islami_app/moduls/hadith/hadith_details.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  List<HadithData> hadithDataList= [];
  @override
  Widget build(BuildContext context) {
    var theme =Theme.of(context);
    if(hadithDataList.isEmpty) loadHadithData();
    return Column(
      children: [
        Image.asset("assets/icons/hadith_header.png",scale: 0.99,
        ),
        const Divider(),
        Text("الأحاديث",
        textAlign: TextAlign.center,
        style:theme.textTheme.bodyLarge ,),
        const Divider(),
        Expanded(
          child: ListView.builder(itemBuilder: (context, index)
              {
                return Bounceable(
                  duration: const Duration(milliseconds: 200),
                  onTap: () {
                    Navigator.pushNamed(context, HadithDetailsView.routeName,
                      arguments: hadithDataList[index],
                    );

                  },
                  child: Text(
                    textAlign: TextAlign.center,
                    hadithDataList[index].title,
                    style: theme.textTheme.bodyMedium!.copyWith(height: 1.7),
                  ),
                );
              },
            itemCount: hadithDataList.length,
          ),
        )
      ],

    );
  }
  Future<void> loadHadithData() async{
    String content= await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String>allHadithList=content.split("#");
    for(int i=0 ; i<allHadithList.length-1 ;i++){
      String singleHadithData =allHadithList[i].trim();
      int indexLength=singleHadithData.indexOf("\n");
      String title = singleHadithData.substring(0,indexLength);
      String hadithBody = singleHadithData.substring(indexLength+1);
      HadithData hadithData =HadithData(
          title: title,
          bodyContent: hadithBody
      );
      hadithDataList.add(hadithData);
    }
    setState(() {

    });
  }


}
class HadithData{
  String title;
  String bodyContent;
  HadithData(
  {
    required this.title,
    required this.bodyContent,
}
      );
}

