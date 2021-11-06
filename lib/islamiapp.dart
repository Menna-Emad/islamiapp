import 'package:flutter/material.dart';
import 'package:untitled/hadeth/hadthtap.dart';
import 'package:untitled/main.dart';
import 'package:untitled/quran/qurantap.dart';
import 'package:untitled/radio/radiotab.dart';
import 'package:untitled/sebha/sebhatap.dart';

class Homepage extends StatefulWidget{
  static const String routeName='Homepage';

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentPage=0;

  @override
  Widget build(BuildContext context) {
    return Stack(

      children:[
        Image.asset('assets/images/2x/default.png',
    width:double.infinity,
      height:double.infinity,
      fit:BoxFit.fill,
    ),
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text('islami',style: TextStyle(fontSize: 28,
            color:MythemeData.colorBlack
            ), ),
        backgroundColor:Colors.transparent,
    ),
        backgroundColor: Colors.transparent,
        bottomNavigationBar:
        Theme(
          data:Theme.of(context).copyWith(
    canvasColor: MythemeData.primaryColor
    ),
          child: BottomNavigationBar(
            onTap: (index){
              currentPage=index;
              setState(() {

              });
            },
            currentIndex: currentPage ,
    selectedItemColor: MythemeData.selectedIcnColor,
          unselectedItemColor: MythemeData.unselectedIcnColor,
          backgroundColor: MythemeData.primaryColor,
          items:[
            BottomNavigationBarItem(
              label:'quran',
                icon:Image.asset('assets/images/2x/icon_quran@2x.png',width: 36,)),
            BottomNavigationBarItem(
                label:'sebha',
                icon:Image.asset('assets/images/2x/icon_sebha2x.png',width: 36,)),
            BottomNavigationBarItem(
              label:'radio',
                icon:Image.asset('assets/images/2x/icon_radio2x.png',width:36)),
            BottomNavigationBarItem(
              label:'hadeth',
                icon:Image.asset('assets/images/2x/icon_hadeth@2x.png',width:36)),
          ],
          ),
        ),
        body:Container(child: getCurrentPage()),
        ),
  ],  );
  }

 Widget getCurrentPage(){
if(currentPage==0){
  return qurantap();
}else if (currentPage==1){
  return sebhatap();
}else if(currentPage==2){
  return radiotap();
}else
  return HadethTap();
}
}
