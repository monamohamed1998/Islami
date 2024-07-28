import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/hadeth/hadeth.dart';
import 'package:islami/tabs/hadeth/hadeth_details.dart';

class HadethTab extends StatefulWidget {
  static const String routeName= "/hadeth_tab";

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List <Hadeth> ahadeth=[];


 


  @override
  Widget build(BuildContext context) {
    if(ahadeth.isEmpty){
 loadHadethFile();
    }
    return Column(
          children: [
            Image.asset("assets/images/hadeth_logo.png",
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
                Text(" الأحاديث",style:Theme.of(context).textTheme.headlineSmall),
                
              ],
            ),
             Divider(
              color: AppTheme.lightPrimary,
              thickness: 2,
            ),



            Expanded(
              child: ListView.separated(
                
                itemBuilder: 
              (BuildContext context,int index)=>
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                
                  GestureDetector(
                     onTap: () {
                    Navigator.pushNamed(context, HadethDetails.routeName,
                    arguments: ahadeth[index],
                     );
                  },
                    child: Text(ahadeth[index].hadethheader,
                    style:Theme.of(context).textTheme.headlineSmall),
                  ),
                ],
              ),
               separatorBuilder:
               (BuildContext context,int index)=> SizedBox(height: 12,),
                itemCount: ahadeth.length,
                ),
            ),
          ],
        );
  }

   Future<void> loadHadethFile() async {
  
  String all_ahadeth= await rootBundle.loadString("assets/files/ahadeth.txt");

  List <String> ahadeth_text=all_ahadeth.split('#');
  
 ahadeth =  ahadeth_text.map((hadethText){
   
    List <String> hadeth_lines = hadethText.trim().split("\n");

   String hadethHeader= hadeth_lines.first;
    hadeth_lines.removeAt(0);
    List <String> hadethBody = hadeth_lines;
   return Hadeth(hadetcontent: hadethBody, hadethheader: hadethHeader);
  } ).toList();
  

  setState(() {
    
  });
  }
}
