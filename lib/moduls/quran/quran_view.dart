
import 'package:flutter/material.dart';
import 'package:islami_app/moduls/quran/quran_details.dart';
import 'package:islami_app/moduls/quran/widgets/sura_title_widget.dart';

class QuranView extends StatefulWidget {

  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  List<String> suraNamesList = [
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/icons/quran_header_icn.png" , scale: 1.2,),
        Divider(),
         Row(
          children: [
            Expanded(
              child: Text("رقم السورة",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge
                ,),
            ),
            const SizedBox(height: 35,child: VerticalDivider(), ),
            Expanded
              (child:
            Text("اسم السورة" ,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge )),
          ],

        ),
        const Divider(),
        Expanded(
            child: ListView.builder(itemBuilder:(context, index ) =>  InkWell(
              onTap: (){

                Navigator.pushNamed(context, QuranDetails.routeName,
                  arguments:
                  SuraData(suraName: suraNamesList[index], suraNumber:  (index + 1).toString(),
                  ),
                );

              },
              child: SuraTitleWidget(
                data: SuraData(suraName: suraNamesList[index], suraNumber:  (index + 1).toString(),),
              ),
            ),
               itemCount: suraNamesList.length, ))

      ],
    );
  }
}



class SuraData {
  final String suraName;
  final String suraNumber;

  SuraData({
    required this.suraName,
    required this.suraNumber,
  });
}