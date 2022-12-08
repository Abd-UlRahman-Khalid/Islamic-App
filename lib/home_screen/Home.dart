import 'package:flutter/material.dart';
import 'package:islamic_app/home_screen/ahades.dart';
import 'package:islamic_app/home_screen/quran.dart';
import 'package:islamic_app/home_screen/radio.dart';
import 'package:islamic_app/home_screen/sabha.dart';
import 'package:islamic_app/my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'islamic',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index){
              currentIndex=index;
           setState(() {

           });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/moshaf_blue.png',),size: 30,),
                  label: 'Quran',
                  ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio_blue.png'),size: 30),
                  label: 'Radio',
                  ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ahades.png'),size: 30),
                  label: 'Ahades',
                  ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha_blue.png'),size: 30),
                  label: 'Sebha',
                 ),
            ],
          ),
          body: tabs[currentIndex],
        ),
      ],
    );
  }
  List<Widget>tabs=[
    QuranTab(),
    RadioTab(),
    AhadesTab(),
    SabhaTab(),
  ];
}
