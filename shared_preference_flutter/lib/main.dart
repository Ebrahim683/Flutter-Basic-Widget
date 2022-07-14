import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var number = 0;

  increaseNumber() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      number++;
      sharedPreferences.setInt('number', number);
    });
  }

  getNumber() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      number = sharedPreferences.getInt('number') ?? 0;
    });
  }

  clearData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      sharedPreferences.clear();
      number = 0;
    });
  }

  @override
  void initState() {
    super.initState();
    getNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: const TextStyle(fontSize: 25, color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                clearData();
              },
              child: const Text(
                'Clear',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increaseNumber();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
