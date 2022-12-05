import 'package:flutter/material.dart';
import 'package:islamic_app/home_screen/sura_detils/sura_details.dart';
import 'package:islamic_app/my_theme.dart';

class SuraNameItam extends StatelessWidget {
 int index;
  String name;
 SuraNameItam(this.name,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, suraDetailsScreen.routename,
        arguments: suraDetailsArg(name,index));
      },
      child: Text(name,
       textAlign: TextAlign.center,
       style: Theme.of(context).textTheme.subtitle1?.copyWith(
       color: MyThemeData.colorBlack
      ),),
    );
  }
}
