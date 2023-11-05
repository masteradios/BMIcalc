
import 'dart:math';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard.dart';
import 'inputdata.dart';
import 'resultcalcaultor.dart';
class Screen2 extends StatelessWidget {
  Screen2(this.bmiresult,this.bmiopinion,this.bmiadvice);
  final String bmiresult;
  final String bmiopinion;
  final String bmiadvice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text('YOUR RESULT',
              style: numberstyle(),),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(colour: inactivecolor,cardchild:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Text(bmiopinion.toUpperCase(),style: resultcolor(),textAlign: TextAlign.center,),

                Text(bmiresult,style: TextStyle(fontSize: 100.0,fontWeight: FontWeight.bold,
                    color: Colors.white),),
                Text(bmiadvice,style:TextStyle(fontSize: 25.0),textAlign: TextAlign.center,),

              ],
            ),),),
          GestureDetector(
            onTap: ()
            {

                Navigator.pop(context);

            },
            child: ReusableCard(colour: Colors.pinkAccent,cardchild: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(child: Text('RECALCULATE',style: TextStyle(color: Colors.white,fontSize: 30.0,
                fontWeight: FontWeight.w900,),),),
            ),),

          ),
        ],
      ),

    );
  }
}




