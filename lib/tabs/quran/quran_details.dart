import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/settings_tab/settings_provider.dart';
import 'package:provider/provider.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName= "/quran_details";

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List <String> ayat=[];


late suraDetails args;

  @override
  Widget build(BuildContext context) {
                SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

     args= ModalRoute.of(context)!.settings.arguments as  suraDetails;
     if(ayat.isEmpty){loadQuranFile();}
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Provider.of<SettingsProvider>(context).bgImg),fit: BoxFit.fill),
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
            color: settingsProvider.isdark? AppTheme.darkPrimary : AppTheme.white,
          ),
          child: ayat.isEmpty ?
          Center(child: CircularProgressIndicator()) 
          :
          ListView.builder(
            
          itemBuilder: 
          (_,index) =>
          Text(
            ayat[index]
           ,textAlign: TextAlign.center
            ,style: Theme.of(context).textTheme.titleLarge,),

          itemCount: ayat.length,
          ),
        ),
      ),
    );
  }

  Future<void> loadQuranFile() async {
  
  String sura= await rootBundle.loadString("assets/files/${args.index + 1}.txt");
  print(args.index);
 
  ayat = sura.split("/n");
  setState(() {
    
  });
  }
}