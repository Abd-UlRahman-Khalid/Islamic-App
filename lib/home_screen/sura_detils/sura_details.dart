import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/home_screen/sura_detils/sura_details_Item.dart';
import 'package:islamic_app/my_theme.dart';


class suraDetailsScreen extends StatefulWidget {
  static const routename = 'SuraDetails';

  @override
  State<suraDetailsScreen> createState() => _suraDetailsScreenState();
}

class _suraDetailsScreenState extends State<suraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as suraDetailsArg;
   if(verses.isEmpty){
     loadFile(args.Index);
   }
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Scaffold(
          appBar: AppBar(
            title: Text(
              '${args.suraName}',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body:verses.isEmpty?Center(child: CircularProgressIndicator()): ListView.separated(
            separatorBuilder: (context,index)=>Divider(
              color: MyThemeData.colorBlack,
              endIndent: 40,
              indent: 40,
            ),
              itemCount: verses.length,
              itemBuilder: (_, index) {
                return SuraDetailsItem(verses[index]);
              }))
    ]);
  }

  void loadFile(int index) async {
    String content = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    print(lines);

    verses = lines;
    setState(() {

    });
  }
}

class suraDetailsArg {
  String suraName;
  int Index;

  suraDetailsArg(this.suraName, this.Index);
}
