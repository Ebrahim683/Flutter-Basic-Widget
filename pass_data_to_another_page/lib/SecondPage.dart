import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  var data;

  SecondPage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          data,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
