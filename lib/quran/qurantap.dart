import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/quran/suranameitem.dart';

class qurantap extends StatelessWidget{
  final List<String>suraaNames=[
  "الفاتحه","البقرة",
  "آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود",
  "يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex:1,
          child:
          Image.asset(('assets/images/2x/qur2an_screen_logo@2x.png')),

        ),
        Container(
          height:1,
          width: double.infinity,
          color: MythemeData.primaryColor,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Sura Name',style:TextStyle(fontSize: 27),
          ), ),Divider(color: MythemeData.primaryColor,thickness: 3,),
        Expanded(
          flex:3,
          child: ListView.separated(
              separatorBuilder: (buildContext,index){
                return  Container(
                  height:1,
                  margin: EdgeInsets.symmetric(horizontal:12),
                  width: double.infinity,
                  color: MythemeData.primaryColor,
                );
              },
              itemBuilder: (buildContext,index){
                return suraNameItems(suraaNames[index], index);
              },
              itemCount:suraaNames.length),)
      ],);
  }
}
