import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('First Page'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/secondPageRouts");
              },
              child: const Text('Go to second page'),
            )
          ],
        ),
      ),
    );
  }
}
