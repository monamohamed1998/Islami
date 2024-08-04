import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/settings_tab/setting_tab.dart';
import 'package:islami/tabs/settings_tab/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FirstPage extends StatefulWidget {
  static const String routeName= "/";

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int currentindex =0;
  List <Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingTab(),
  ];
  

  @override
  Widget build(BuildContext context) {
        // SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage(Provider.of<SettingsProvider>(context).bgImg) 
          ,fit: BoxFit.fill),
      ),
      child: Scaffold(
        
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islami),
         
        ),
        body: tabs[currentindex], 
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (index)  {
           
            setState(() {
               currentindex = index;
            });
          },
          items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),label:AppLocalizations.of(context)!.quran),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),label: AppLocalizations.of(context)!.hadeth),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),label: AppLocalizations.of(context)!.sebha),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),label: AppLocalizations.of(context)!.radio),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: AppLocalizations.of(context)!.settings),
        ]),
      ),
    );
  }
}