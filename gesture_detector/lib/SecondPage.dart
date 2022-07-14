import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SHome(),
    );
  }
}

class SHome extends StatefulWidget {
  const SHome({Key? key}) : super(key: key);

  @override
  State<SHome> createState() => _SHomeState();
}

class _SHomeState extends State<SHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'second',
        ),
      ),
    );
  }
}
