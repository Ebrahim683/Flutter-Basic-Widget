import 'package:flutter/material.dart';
import 'package:pass_data_to_another_page/SecondPage.dart';
import 'package:pass_data_to_another_page/ThirdPage.dart';

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
  var data = "Subhanallah";
  var data2 = "Alhamdulillah";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondPage(
                              data: data,
                            )));
              },
              child: const Text('Send data to second page'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ThirdPage(
                              data: data2,
                            )));
              },
              child: const Text('Send data to third page'),
            ),
          ],
        ),
      ),
    );
  }
}
