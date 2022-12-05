import 'package:flutter/material.dart';
import 'package:islamic_app/home_screen/Home.dart';
import 'package:islamic_app/home_screen/sura_detils/sura_details.dart';
import 'package:islamic_app/my_theme.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routename,
      routes: {HomeScreen.routename: (c) => HomeScreen(),
        suraDetailsScreen.routename:(c)=>suraDetailsScreen()},
theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.dartTheme,
      themeMode: ThemeMode.light,
    );
  }
}
