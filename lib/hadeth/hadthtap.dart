import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/hadeth/elhadethtitle.dart';

import '../main.dart';

class HadethTap extends StatefulWidget{
  @override
  _HadethTapState createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  @override
  Widget build(BuildContext context) {
    if(allHadeth.isEmpty)
    loadHadethFile();
    return Column(
      children: [
       Expanded(child:  Image.asset('assets/images/2x/hadeth_logo2x.png')),
        Expanded(
          flex: 3,
            child: Container(
          child: allHadeth.isEmpty?Center(child: CircularProgressIndicator()):
          ListView.separated(itemBuilder:(buildContext,index){
            return hadethtitle(allHadeth[index]);
    },
            separatorBuilder: (buildContext,index){
              return  Container(
                height:1,
                margin: EdgeInsets.symmetric(horizontal:12),
                width: double.infinity,
                color: MythemeData.primaryColor,
              );
            },
    itemCount: allHadeth.length,)
        ))

      ],
    );
  }

  List<Hadeth>allHadeth=[];

  void loadHadethFile()async{
    for(int i=1;i<=50;i++){
      String fileContent=await rootBundle.loadString('assets/ahadeth/h$i');
    List<String>lines=fileContent.split('/n');
    String title=lines[0];
    String content='';
    for(int j=1;j<lines.length;j++){
      content+=lines[j];
    }
    var h =Hadeth(title,content);
    allHadeth.add(h);
    }
    setState(() {

    });
  }
}
class Hadeth{
  String title;
  String content;
  Hadeth(this.title,this.content);
}