import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/hadeth_details/hadeth_details.dart';
import 'package:islamic_app/my_theme.dart';
import 'package:islamic_app/home_screen/ahades.dart';

class AhadesTab extends StatefulWidget {
  @override
  State<AhadesTab> createState() => _AhadesTabState();
}

class _AhadesTabState extends State<AhadesTab> {
  List<HadethData> Ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (Ahadeth.isEmpty) {
      LoadHadethFile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/ahades_main.png'),
        const Divider(
          color: MyThemeData.colorGold,
          thickness: 3,
        ),
        Text(
          'Ahadeth',
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
        const Divider(
          color: MyThemeData.colorGold,
          thickness: 3,
        ),
        Ahadeth.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Expanded(
                child: ListView.separated(
                  separatorBuilder: (context,index)=>Divider(
                    color: MyThemeData.colorGold,
                    thickness: 2,
                  ),
                    itemCount: Ahadeth.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap:(){
                        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
                        arguments: Ahadeth[index]);
                        },
                        
                        child: Text(Ahadeth[index].title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: MyThemeData.colorBlack
                        )),
                      );
                    }),
              )
      ],
    );
  }

  void LoadHadethFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> AllAhadeth = content.split('#\r\n');
    for (int i = 0; i < AllAhadeth.length; i++) {
      String hadeth1 = AllAhadeth[i];
      List<String> HadethLines = hadeth1.split('\n');
      String title = HadethLines[0];
      HadethLines.removeAt(0);
      HadethData hadethData = HadethData(title, HadethLines);
      Ahadeth.add(hadethData);
    }
    setState(() {

    });
  }
}

class HadethData {
  String title;
  List<String> content;

  HadethData(this.title, this.content);
}
