import 'package:flutter/material.dart';
int heightnumber=150;
int agenumber=20 ;
int weightnumber=40;
Color activecolor=Color(0xFF1D1E33);
Color inactivecolor=Color(0xFF111628);
Color malecolor= Color(0xFF111628);
Color femalecolor=Color(0xFF111628);
Color activemalecolor=Color(0xFF0C7EE8);
Color activefemalecolor=Color(0xFFE053D7);
Color normal=Colors.green;
Color abnormalweight=Colors.red.shade900;

TextStyle buildTextStyle() {
  return TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w900,
      color:Colors.white38);
}
TextStyle numberstyle()
{
  return TextStyle
    (
      fontSize: 40.0,
      fontWeight: FontWeight.w900,
      color:Colors.white);

}
TextStyle resultcolor()
{
  return TextStyle
    (
    fontSize: 50.0,
    color: Colors.greenAccent,



  );
}