import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/quran/quran_tab.dart';

class QuranDetails extends StatelessWidget {
  static const String routeName= "/quran_details";
  List <String> ayat=["بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ ","قُلْ هُوَ اللَّهُ أَحَدٌ "," اللَّهُ الصَّمَدُ"," لَمْ يَلِدْ وَلَمْ يُولَدْ "," وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ "];
List <String> a = [];
  @override
  Widget build(BuildContext context) {
    suraDetails args= ModalRoute.of(context)!.settings.arguments as  suraDetails;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg3.png",),fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:Text(args.suraname) ,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.04,
            horizontal: MediaQuery.of(context).size.width*0.05,
          ),
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.02,
            horizontal: MediaQuery.of(context).size.width*0.05,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(185, 248, 248, 248),
          ),
          child: ListView.builder(
            
          itemBuilder: 
          (_,index) =>Center(child: Text(ayat[index],style: Theme.of(context).textTheme.titleLarge,)),
          itemCount: ayat.length,
          ),
        ),
      ),
    );
  }

//  void loadQuranFile(){
  
//   rootBundle.loadString("assets/files/${a[index+1]}.txt");
//   }
}