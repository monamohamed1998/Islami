import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/quran/quran_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class QuranTab extends StatelessWidget {
    static const String routeName= "/quran_tab";
    List<String> suraNames = [
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

   List<int> versesNumber = [7,286,200,176,120,165,206,75,129,109,123,111,43,52,99,128,111,110,98,135,112,78,118,64,77,227,93,88,
    69,60,34,30,73,54,45,83,182,88,75,85,54,53,89,59,37,35,38,29,18,45,60,49,62,55,78,96,29,22,24,13,14,11,11,18,12,12,30,52,52,
    44,28,28,20,56,40,31,50,40,46,42,29,19,36,25,22,17,19,26,30,20,15,21,11,8,5,19,5,8,8,11,11,8,3,9,5,4,6,3,6,3,5,4,5,6
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Image.asset("assets/images/quran_header.png",
            height: MediaQuery.of(context).size.height* 0.25,),
            SizedBox(
             
              height: 15,
            ),
            Divider(
              color: AppTheme.lightPrimary,
               thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: Center(child: Text(AppLocalizations.of(context)!.ayatnumber,style:Theme.of(context).textTheme.headlineSmall))),
                 Container(
                    width: 2, 
                    height: 30, 
                    color: AppTheme.lightPrimary, 
                  ),
                Expanded(child: Center(child: Text(AppLocalizations.of(context)!.suraaname
                  ,style:Theme.of(context).textTheme.headlineSmall))),
              ],
            ),
             Divider(
              color: AppTheme.lightPrimary,
              thickness: 2,
            ),



          Expanded(
  child: ListView.separated(
    itemCount: suraNames.length,
    separatorBuilder: (BuildContext context, int index) =>
      SizedBox(height: 12),
    itemBuilder: (BuildContext context, int index) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Center(
              child: Text(
                versesNumber[index].toString(),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
           Container(
                    width: 2, 
                    height: 30, 
                    color: AppTheme.lightPrimary,    ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  QuranDetails.routeName,
                  arguments: suraDetails(suraname: suraNames[index], index: index),
                );
              },
              child: Center(
                child: Text(
                  suraNames[index],
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
          ),
        ],
      );
    },
  ),
),
  ],
        );
  }
  

}
class suraDetails{
     String suraname;
     int index;
     suraDetails({required this.suraname,required this.index});
  }
