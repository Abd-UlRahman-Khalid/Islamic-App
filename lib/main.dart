import 'package:flutter/material.dart';
import 'package:islamic_app/Home.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routename,
      routes: {HomeScreen.routename: (c) => HomeScreen()},
    );
  }
}
