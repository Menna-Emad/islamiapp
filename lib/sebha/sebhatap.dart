import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class sebhatap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Image.asset('assets/images/2x/body_sebha_logo2x.png',width: 180,height: 180,),
          Container(

          child:

            Image.asset('assets/images/2x/head_sebha_logo2x.png',width: 180,height: 180,),

          ),
        ],
      ),
    ); }
}