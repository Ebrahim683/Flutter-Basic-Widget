import 'package:flutter/material.dart';
import 'package:navigator/FirstPage.dart';
import 'package:navigator/SecondPage.dart';

void main() {
  runApp(
    const MyApp(),
  );
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
      initialRoute: "/",
      routes: {
        "/firstPageRouts": (context) => FirstPage(),
        "/secondPageRouts": (context) => SecondPage(),
      },
      home: FirstPage(),
    );
  }
}
