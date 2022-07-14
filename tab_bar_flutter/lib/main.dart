import 'package:flutter/material.dart';

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
      home: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: const Text(
                'Tab Bar',
              ),
              bottom: const TabBar(
                indicatorColor: Colors.yellow,
                tabs: <Widget>[
                  Icon(
                    Icons.home,
                    size: 30,
                  ),
                  Icon(
                    Icons.list,
                    size: 30,
                  ),
                  Icon(
                    Icons.people_outline,
                    size: 30,
                  ),
                ],
              ),
            ),
            body: const TabBarView(
              children: <Widget>[
                Icon(
                  Icons.home,
                ),
                Icon(
                  Icons.list,
                ),
                Icon(
                  Icons.people_outline,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
