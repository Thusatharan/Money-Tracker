import 'package:flutter/material.dart';
import 'package:money_tracker/constants/constants.dart';

import 'screens/home_screens.dart';
import 'screens/success_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kBackgroundColor,
        primarySwatch: Colors.blue,
        fontFamily: 'Lora',
      ),
      home: const HomeScreen(),
    );
  }
}
