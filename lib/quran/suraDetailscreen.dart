
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';

class suraDetailscreen extends StatefulWidget{
  static const String routeName='suraDetails';

  @override
  _suraDetailscreenState createState() => _suraDetailscreenState();
}

class _suraDetailscreenState extends State<suraDetailscreen> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)?.settings.arguments as suraDetailArg;
    loadsuraDetail(args.suraIndex);
    return Stack(

      children:[
      Image.asset('assets/images/2x/default.png',
      width:double.infinity,
      height:double.infinity,
      fit:BoxFit.fill,
    ),
    Scaffold(
    appBar: AppBar(
      iconTheme: IconThemeData(color: MythemeData.colorBlack),
    elevation: 0,
    centerTitle: true,
    title: Text('${args.suraName}',style: TextStyle(fontSize: 38,
    color:MythemeData.colorBlack
    ), ),
   backgroundColor: Colors.transparent,
    ),
   backgroundColor: Colors.transparent,
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 48,horizontal:12 ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)
        ),
          child:verses.isEmpty?
          Center(child: CircularProgressIndicator())://el function da be3ml loading//
       ListView.builder(itemBuilder: (buildContext,index){
         return Container(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(verses[index],
             style: TextStyle(
               fontSize: 18),
           textAlign:TextAlign.center,

             ),),
         );},
         itemCount: verses.length,

       ),
      ),
    ),

 ],);
  }

  void loadsuraDetail(int index)async{
    String fileContent= await rootBundle.loadString('assets/files/${index+1}.text');//await 3lshan y3ml load mn gher m ystana el string ely ba3do mn gher m yhneg w lazm m3ah async//
    List<String>ayat=fileContent.split('/n');//split:bt2ta3 el string//
   this.verses=ayat;
   setState(() {

   });
  }
}
class suraDetailArg{
  String suraName;
  int suraIndex;
  suraDetailArg(this.suraName,this.suraIndex);
}