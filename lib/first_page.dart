import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/settings_tab/setting_tab.dart';
import 'package:islami/tabs/settings_tab/settings_provider.dart';
import 'package:provider/provider.dart';

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
          title: Text("اسلامي"),
         
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
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),label: "Quran"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),label: "Hadeth"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),label: "Sebha"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),label: "Radio"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        ]),
      ),
    );
  }
}