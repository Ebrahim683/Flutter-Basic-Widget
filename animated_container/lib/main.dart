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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _value = !_value;
          });
        },
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.refresh,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: AnimatedContainer(
          height: _value == false ? 150 : 300,
          width: _value == false ? 150 : 300,
          duration: const Duration(seconds: 2),
          decoration: BoxDecoration(
            color: _value == false ? Colors.red : Colors.green,
            borderRadius: BorderRadius.all(
              _value == false
                  ? const Radius.circular(100)
                  : const Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
