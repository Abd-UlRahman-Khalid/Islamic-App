import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/home_screen/ahades.dart';
import 'package:islamic_app/my_theme.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth_details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;

    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(30),

          decoration: BoxDecoration(
              color: Colors.white70,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),

            ),
            border: Border.all(color: MyThemeData.colorGold,width: 3)
          ),
          child: ListView.builder(
              itemCount:args.content.length ,
              itemBuilder: (c,index){
            return Text(args.content[index],
                    textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: MyThemeData.colorBlack
              ),
            );

          }),
        ),
      )
    ]);
  }
}
