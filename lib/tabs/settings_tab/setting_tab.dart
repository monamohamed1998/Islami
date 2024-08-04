import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/settings_tab/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SettingTab extends StatelessWidget {
  static const String routeName= "/setting_tab";
  @override
  Widget build(BuildContext context) {
                    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
       children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(AppLocalizations.of(context)!.darkmode,style: Theme.of(context).textTheme.headlineSmall,),
          Switch(
            activeTrackColor: AppTheme.gold,
            inactiveTrackColor: Colors.grey,
            value:
          settingsProvider.isdark , 
          onChanged:
           (isdark){
              settingsProvider.changeThemeMode(
                isdark?ThemeMode.dark:ThemeMode.light );
          })
        ],),
        SizedBox(height: 15,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(AppLocalizations.of(context)!.language,
          style: Theme.of(context).textTheme.headlineSmall,),
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
           
              dropdownColor: settingsProvider.isdark? AppTheme.darkPrimary : AppTheme.white,
              borderRadius: BorderRadius.circular(12),
              style:  Theme.of(context).textTheme.labelSmall,
              value:settingsProvider.language ,
              items:
             [DropdownMenuItem(
              value: 'en',
              child: Text("English")),
            DropdownMenuItem(
              value: 'ar',
              child: Text("Arabic"))],
             onChanged:
              (selectedvalue)
              {
                if (selectedvalue==null)return;
                  settingsProvider.changeLanguage(selectedvalue);
              }),
              
          )
        ],),
       ],
      ),
    );
  }
}