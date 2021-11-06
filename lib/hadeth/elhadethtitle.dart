import 'package:flutter/material.dart';
import 'package:untitled/hadeth/hadethDetails.dart';

import 'hadthtap.dart';

class hadethtitle extends StatelessWidget{
  Hadeth hadeth;
  hadethtitle(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return  InkWell(//3lshan lma ados 3la el button//
      onTap: (){
        Navigator.pushNamed(context, HadethDetails.routeName);
            arguments:Hadeth()
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(hadeth.title,style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}