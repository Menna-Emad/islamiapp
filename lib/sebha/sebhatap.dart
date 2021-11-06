import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class sebhatap extends StatefulWidget{
  @override
  _sebhatapState createState() => _sebhatapState();
}

class _sebhatapState extends State<sebhatap> {
  double finalAngle=0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
              child:Transform.rotate(
                angle: finalAngle,
                origin: Offset(0,0),
                child:Container(child: Image.asset('assets/images/2x/body_sebha_logo2x.png',width: 180,height: 180,)),
              ),



           // Image.asset('assets/images/2x/head_sebha_logo2x.png',width: 180,height: 180,),

          ),
       GestureDetector(
         onPanStart: (details){},
         onPanEnd: (details){},
         onPanUpdate: (details){
           setState(() {
             finalAngle+=details.delta.distance*-pi/180;
           });
         }
         ,
       )
        ],
      ),
    );

  }
}


