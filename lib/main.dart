import 'package:enroutelbsnaa/components/botnavbar.dart';
import 'package:enroutelbsnaa/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:enroutelbsnaa/screens/login and signup/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enroute LBSNAA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF688EDB),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const BotNav(),
    );
  }
}
