import 'package:ecobankclone/component/helppage.dart';
import 'package:flutter/material.dart';
import 'package:ecobankclone/component/homepage.dart';
import 'package:ecobankclone/component/cardservices.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecobank Clone',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

 