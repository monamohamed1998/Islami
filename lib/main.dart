import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:islami/app_theme.dart';
import 'package:islami/first_page.dart';
import 'package:islami/tabs/hadeth/hadeth_details.dart';
import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran_details.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/settings_tab/setting_tab.dart';
import 'package:islami/tabs/settings_tab/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SettingsProvider()),
      
      ],
      child: Islami(),
    ),
  );
}
class Islami extends StatelessWidget {
  const Islami({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      routes: {
        FirstPage.routeName : (_)=>FirstPage(),
        QuranTab.routeName : (_)=>QuranTab(),
        HadethTab.routeName : (_)=>HadethTab(),
        SebhaTab.routeName : (_)=>SebhaTab(),
        RadioTab.routeName : (_)=>RadioTab(),
        SettingTab.routeName : (_)=>SettingTab(),
        QuranDetails.routeName : (_)=>QuranDetails(),
        HadethDetails.routeName : (_)=>HadethDetails(),

      },
      // ____________Localization______________
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,  
      locale: Locale(settingsProvider.language),
      // ____________Theming______________
      theme: AppTheme.lightTheme ,
      darkTheme: AppTheme.darkTheme,
      themeMode: settingsProvider.themeMode,
    );
  }
}