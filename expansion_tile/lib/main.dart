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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ExpansionTile(
                subtitle: const Text('This is one'),
                title: const Text('One'),
                leading: const Icon(Icons.home),
                children: <Widget>[
                  Container(
                    height: 100,
                    color: Colors.lightGreen,
                  ),
                ],
              ),
              ExpansionTile(
                subtitle: const Text('This is one'),
                title: const Text('One'),
                leading: const Icon(Icons.home),
                children: <Widget>[
                  Container(
                    height: 100,
                    color: Colors.lightGreen,
                  ),
                ],
              ),
              ExpansionTile(
                subtitle: const Text('This is one'),
                title: const Text('One'),
                leading: const Icon(Icons.home),
                children: <Widget>[
                  Container(
                    height: 100,
                    color: Colors.lightGreen,
                  ),
                ],
              ),
              ExpansionTile(
                subtitle: const Text('This is one'),
                title: const Text('One'),
                leading: const Icon(Icons.home),
                children: <Widget>[
                  Container(
                    height: 100,
                    color: Colors.lightGreen,
                  ),
                ],
              ),
              ExpansionTile(
                subtitle: const Text('This is one'),
                title: const Text('One'),
                leading: const Icon(Icons.home),
                children: <Widget>[
                  Container(
                    height: 100,
                    color: Colors.lightGreen,
                  ),
                ],
              ),
              ExpansionTile(
                subtitle: const Text('This is one'),
                title: const Text('One'),
                leading: const Icon(Icons.home),
                children: <Widget>[
                  Container(
                    height: 100,
                    color: Colors.lightGreen,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
