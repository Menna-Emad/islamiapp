import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/hadeth/elhadethtitle.dart';

import '../main.dart';

class hadethtap extends StatefulWidget {
  @override
  _hadethtapState createState() => _hadethtapState();
}

class _hadethtapState extends State<hadethtap> {
  List<Hadeth>AllAhadeth = [];

  @override
  Widget build(BuildContext context) {
    hadethContent();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child:
          Image.asset(('assets/images/2x/hadeth_logo2x.png')),

        ),
        Container(
          height: 1,
          width: double.infinity,
          color: MythemeData.primaryColor,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Elhadeth', style: TextStyle(fontSize: 27),
          ),), Divider(color: MythemeData.primaryColor, thickness: 3,),
        Expanded(
          flex: 3,
          child: ListView.separated(
              separatorBuilder: (buildContext, index) {
                return Container(
                  height: 1,
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  width: double.infinity,
                  color: MythemeData.primaryColor,
                );
              },
              itemBuilder: (buildContext, index) {
                return hadethtitle(
                    AllAhadeth[index]);
              },
              itemCount: AllAhadeth.length),)
      ],);
  }
}

  void hadethContent()async {
    String Allahadeth = await rootBundle.loadString('assets/content/');
    List<String>Allahadethlist = Allahadeth.split('#/r/n');
    List<Hadeth>listahadeth=[];
    for (int i = 0; i < Allahadethlist.length; i++)
      {
        String hadeth=Allahadethlist[i];
      List<String>singlehadeth=  hadeth.split('/n');
      String titles=singlehadeth[0];
      listahadeth.add(Hadeth(titles, singlehadeth));
  }
    Allahadethlist=listahadeth.cast<String>();



}

class Hadeth{
  String title;
  List<String>hadethContent;
  Hadeth(this.title,this.hadethContent);

}