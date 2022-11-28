import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routename = 'HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/main_background.png',
        width:double.infinity,
        fit: BoxFit.fitWidth,),
        Scaffold(
          appBar: AppBar(
            title: Text('islamic',style: Theme.of(context).textTheme.headline1,),
          ),

        ),
      ],
    );
  }
}
