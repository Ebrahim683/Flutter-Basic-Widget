import 'package:flutter/foundation.dart';
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
  var _value = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea( 
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                _value == false ? "Unchecked" : "Checked",
                style: const TextStyle(fontSize: 30),
              ),
              Checkbox(
                value: _value,
                onChanged: (value) {
                  setState(
                    () {
                      _value = value!;
                      print(_value);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
