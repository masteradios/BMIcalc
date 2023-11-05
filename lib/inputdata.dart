
import 'dart:math';
import 'package:bmicalc/screen2.dart';

import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard.dart';
import 'resultcalcaultor.dart';

class InputData extends StatefulWidget {
double result;

  @override
  State<InputData> createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {

  void update(String gender)
  {
    if(gender=='male')
    {
      if(malecolor==inactivecolor)
        {
          malecolor=activemalecolor;
          femalecolor=inactivecolor;
          heightnumber=150;
        }
      else{
        malecolor=inactivecolor;
      }
    }
    else
    {
      if(gender=='female')
      {
        if(femalecolor==inactivecolor)
        {
          malecolor=inactivecolor;
          femalecolor=activefemalecolor;
          heightnumber=140;
        }
        else{
          femalecolor=inactivecolor;
        }
      }
    }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(children: [
          Expanded(child: GestureDetector(
            onTap: (){
              setState(() {
                update('male');
              });



              },
            child: ReusableCard(colour: malecolor,cardchild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
         children: [
             Icon(FontAwesomeIcons.mars,
             size: 50.0,),
             SizedBox(height: 10.0,),
             Text('MALE',
             style: buildTextStyle(),),

         ],


              ),
            ),
          ),),
            Expanded(child: GestureDetector(
              onTap: ()
              {
                setState(() {
                  update('female');
                });

              },
              child: ReusableCard(colour: femalecolor,cardchild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Icon(FontAwesomeIcons.venus,
                    size: 50.0,),
                  SizedBox(height: 10.0,),
                  Text('FEMALE',
                    style:buildTextStyle(),),

                ],

              ),),
            ),),
          ],
          ),
          ),
          Expanded(child: ReusableCard(colour:inactivecolor,
            cardchild: Column(


              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('HEIGHT',style: buildTextStyle(),),
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                  Text('${heightnumber}',style: numberstyle(),),
                    Text('cm',style: buildTextStyle(),),
                  ],),
                SizedBox(height: 10.0,),
                Slider(
                    value: heightnumber.toDouble(),
                    min: 100.0,
                    max: 220.0,
                    inactiveColor: Color(0xFF8D8E98),
                    activeColor: Colors.pinkAccent,
                    onChanged:(double newValue)
                {
                  setState((){ heightnumber=newValue.round();});


                })



              ],),)),
          Expanded(child: Row(children: [
            Expanded(child: ReusableCard(colour: inactivecolor,cardchild:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('WEIGHT',style: buildTextStyle(),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '${weightnumber}',
                              style: numberstyle(),
                            ),
                            Text('kg',style: buildTextStyle(),),
                          ],
                        ),

                        Row(


                          children:
                          [
                            SizedBox(width: 20.0,),
                            IconButton(onPressed: ()
                            {
                              setState(() {
                                weightnumber++;
                              });

                            }, icon: Icon(FontAwesomeIcons.plus),),
                            SizedBox(width: 50.0,),
                            IconButton(onPressed: ()
                            {
                              setState(() {
                                weightnumber--;
                              });


                            }, icon: Icon(FontAwesomeIcons.minus),),



                          ],)




                      ],),),),
            Expanded(child: ReusableCard(colour: inactivecolor,cardchild:
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,

                       children: [
                         Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Text('AGE',style: buildTextStyle(),),
                         ),

                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.baseline,
                           textBaseline: TextBaseline.alphabetic,
                           children: [
                             Text(
                                 '${agenumber}',
                               style: numberstyle(),
                             ),
                             Text('yrs',style: buildTextStyle(),),
                           ],
                         ),


                         Row(



                           children:
                         [
                           SizedBox(width: 20.0,),
                           IconButton(onPressed: ()
                           {
                             setState(() {
                               agenumber++;
                             });

                           }, icon: Icon(FontAwesomeIcons.plus),),
                           SizedBox(width: 50.0,),
                           IconButton(onPressed: ()
                           {
                             setState(() {
                               agenumber--;
                             });


                           }, icon: Icon(FontAwesomeIcons.minus),),



                         ],)



                       ],),)),
          ],
          ),
          ),
       GestureDetector(
         onTap: ()
         {
           setState(() {
             BMI calc=BMI(weightnumber, heightnumber);
             Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen2(calc.calculator(),calc.opinion(),calc.advice())));



           });
         },
         child: ReusableCard(colour: Colors.pinkAccent,cardchild: Padding(
           padding: const EdgeInsets.all(15.0),
           child: Center(child: Text('CALCULATE',style: TextStyle(color: Colors.white,fontSize: 30.0,
             fontWeight: FontWeight.w900,),)),
         ),),

       ),
        ],
      ),
    );
  }


}




