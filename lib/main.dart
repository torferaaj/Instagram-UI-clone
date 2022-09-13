import 'package:flutter/material.dart';
import 'package:instagram/splashScreen/splash.dart';
import 'bottombar.dart';
import 'login/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram",
      home: Splash(),
    );
  }
}
