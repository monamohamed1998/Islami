import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/quran/quran_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SebhaTab extends StatefulWidget {
    static const String routeName= "/sebha_tab";

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
    int counter =0;
    String tasbeh_word= "سبحان الله";
      double rotation = 0;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              Image.asset("assets/images/head_sebha_logo.png",
              ),
              InkWell(
                   onTap: ()=> Tasbeeh(),
                child: Transform.rotate(
                  angle: rotation ,
                  child: Image.asset("assets/images/body_sebha_logo.png",
                  height: MediaQuery.of(context).size.height* 0.25,),
                ),
              ),
              SizedBox(   height:  MediaQuery.of(context).size.height*0.05,
              ),
           Text(AppLocalizations.of(context)!.tasbeeh,style: Theme.of(context).textTheme.headlineSmall,),
          
           SizedBox(   height:  MediaQuery.of(context).size.height*0.03,
              ),
           Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.1,
            width: MediaQuery.of(context).size.width*0.17,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 199, 173, 137),
              borderRadius: BorderRadius.circular(30),
              
            ),
            child: Text("$counter",style: Theme.of(context).textTheme.headlineSmall,),
           ),
               SizedBox(   height:  MediaQuery.of(context).size.height*0.03,
              ),
               Container(
                alignment: Alignment.center,
                           height: MediaQuery.of(context).size.height*0.07,
                           width: MediaQuery.of(context).size.width*0.5,
                           decoration: BoxDecoration(
                             color: AppTheme.lightPrimary,
                             borderRadius: BorderRadius.circular(30),
                             
                           ),
                            
                             child: Text("$tasbeh_word",style: Theme.of(context).textTheme.headlineMedium)),
           
      
      
      
               ],
          ),
    );
  }

  void Tasbeeh(){

      if (counter>=0 && counter<33) {
      tasbeh_word= "سبحان الله";
      counter++;
    }
    else if (counter>=33 && counter<66) {
      tasbeh_word= "الحمد لله";
      counter++;
    }
    else if (counter>=66 && counter<99) {
      tasbeh_word= " لا اله الا الله";
      counter++;
    }
    else if (counter ==99) {
      tasbeh_word= "الله اكبر";
      counter++;
    }
    else{
      counter=0;
      tasbeh_word= "سبحان الله";
    }
  
     setState(() {
      rotation++;
  });
  }

}
