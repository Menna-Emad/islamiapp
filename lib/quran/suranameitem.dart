
import 'package:flutter/material.dart';
import 'package:untitled/quran/suraDetailscreen.dart';

class suraNameItems extends StatelessWidget{
  String suraName;
  int suraIndex;
  suraNameItems(this.suraName,this.suraIndex);
  @override
  Widget build(BuildContext context) {
   return  InkWell(//3lshan lma ados 3la el button//
     onTap: (){
       Navigator.pushNamed(context, suraDetailscreen.routeName,
       arguments:suraDetailArg(suraName,suraIndex)
       );
     },
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text('${suraName}',style: TextStyle(fontSize: 20),
           ),
         ),
       ],
     ),
   );
  }
}