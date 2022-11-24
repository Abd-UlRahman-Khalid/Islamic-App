import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routename='HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('islamic'),),
    );
  }
}
