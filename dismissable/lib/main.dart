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
        body: Center(
          child: Dismissible(
            key: const ValueKey('delete'),
            background: Container(
              color: Colors.green,
              child: const Icon(
                Icons.delete,
                size: 40,
                color: Colors.white,
              ),
            ),
            secondaryBackground: Container(
              color: Colors.red,
              child: const Icon(
                Icons.delete,
                color: Colors.white,
                size: 40,
              ),
            ),
            child: const ListTile(
              title: Text('Email'),
              subtitle: Text('ebrahim@gmail.com'),
              trailing: Icon(Icons.send),
              leading: Icon(Icons.email),
            ),
          ),
        ),
      ),
    );
  }
}
