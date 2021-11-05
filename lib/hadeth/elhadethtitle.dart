import 'package:flutter/material.dart';

import 'hadthtap.dart';

class hadethtitle extends StatelessWidget{
  Hadeth hadeth;
  hadethtitle(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        },
   child: Container(
     padding: EdgeInsets.all(8),
     child: Text(hadeth.title,textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
   ),

    );
  }
}