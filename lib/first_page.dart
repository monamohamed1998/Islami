import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  static const String routeName= "/";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg3.png",),fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}