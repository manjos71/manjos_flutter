import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste1/nav.dart';



void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return const MaterialApp(
      title: 'Circle',
      home: Nav(),
    );
  }

}

