import 'package:flutter/material.dart';
import 'package:untitled/hadeth/hadthtap.dart';

class HadethDetails extends StatelessWidget{
  static const String routeName='HadethDetails';
  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Stack(

      children:[
      Image.asset('assets/images/2x/default.png',
      width:double.infinity,
      height:double.infinity,
      fit:BoxFit.fill,
    ),
    Scaffold(
    backgroundColor:Colors.transparent,
    appBar: AppBar(title: Text(args.title),),
      body:Container(
        margin: EdgeInsets.symmetric(vertical: 48,horizontal: 24),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24)
        ),
          child: Text(args.content,
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,)),

    ),
    ],);


  }
}