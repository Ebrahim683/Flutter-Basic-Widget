import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.pinkAccent,
        body: Center(
          child: Text(
            'PageOne',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ));
  }
}
