import 'package:flutter/material.dart';
import 'aboutpage.dart';
import 'package:bmicalc/inputdata.dart';
import 'package:bmicalc/screen2.dart';
void main()
{
  runApp(BMICalculator());
  
}
class BMICalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
          initialRoute: '/',

      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>InputData(),



      },








    );
  }
}
