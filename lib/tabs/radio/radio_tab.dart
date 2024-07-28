import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/quran/quran_details.dart';

class RadioTab extends StatelessWidget {
    static const String routeName= "/radio_tab";
    
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              Image.asset("assets/images/radio_image.png",
              ),
             
              SizedBox(   height:  MediaQuery.of(context).size.height*0.05,
              ),
           Text(" اذاعة القران الكريم",style: Theme.of(context).textTheme.headlineSmall,),
         SizedBox(   height:  MediaQuery.of(context).size.height*0.05,
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.skip_previous_rounded,color: AppTheme.lightPrimary,size: 45,),
              Icon(Icons.play_arrow_rounded,color: AppTheme.lightPrimary,size: 60,),
              Icon(Icons.skip_next_rounded,color: AppTheme.lightPrimary,size: 45,),
            ],
          ),
      
               ],
          ),
    );
  }
  

}
