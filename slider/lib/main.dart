import 'package:flutter/material.dart';

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
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _value = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Slider',
            style: TextStyle(
              fontSize: _value,
            ),
          ),
          Slider(
              min: 10.0,
              max: 50.0,
              thumbColor: Colors.yellow,
              activeColor: Colors.blue,
              inactiveColor: Colors.red,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              }),
        ],
      ),
    );
  }
}
