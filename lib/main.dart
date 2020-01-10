

import 'package:flutter/material.dart';
import 'package:foraneos/vistas/MyHomePage.dart';

//importaciones que nosotros hizimos
//import 'src/MyHomePage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Nick',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}


