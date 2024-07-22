import 'package:flutter/material.dart';
import 'package:islami/first_page.dart';

void main() {
  runApp( Islami());
}

class Islami extends StatelessWidget {
  const Islami({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      routes: {
        FirstPage.routeName : (_)=>FirstPage(),
      },
    );
  }
}