import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  var data;

  ThirdPage({this.data});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          widget.data,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
