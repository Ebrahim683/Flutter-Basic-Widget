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
  var _state = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _state ? Colors.green : Colors.red,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _state ? "On" : "Off",
              style: TextStyle(
                fontSize: 30,
                color: _state ? Colors.red : Colors.green,
              ),
            ),
            Switch(
              value: _state,
              onChanged: (state) {
                setState(() {
                  _state = state;
                  print(_state);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
