import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.cyanAccent,
        body: Center(
          child: Text(
            'PageTwo',
            style: TextStyle(color: Colors.redAccent, fontSize: 30),
          ),
        ));
  }
}
