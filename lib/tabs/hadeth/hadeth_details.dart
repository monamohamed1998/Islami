import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/hadeth/hadeth.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/settings_tab/settings_provider.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatefulWidget {
  static const String routeName= "/hadeth_details";
  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
List <String> new_list = ["mona","mohamed", "ahmed"];



  @override
  Widget build(BuildContext context) {
            SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    Hadeth hadeth= ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Provider.of<SettingsProvider>(context).bgImg),fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:Text(hadeth.hadethheader) ,
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
          child: 
          hadeth.hadetcontent.isEmpty ?
          Center(child: CircularProgressIndicator()) 
          :
          ListView.builder(
            
          itemBuilder: 
          (_,index) =>
          Text(
            hadeth.hadetcontent[index]
           ,textAlign: TextAlign.center
            ,style: Theme.of(context).textTheme.titleLarge,),

          itemCount: hadeth.hadetcontent.length,
          ),
        ),
      ),
    );
  }

 
}