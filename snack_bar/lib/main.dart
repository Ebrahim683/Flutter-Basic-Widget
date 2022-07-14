import 'package:flutter/material.dart';
import 'package:flutter_toastr/flutter_toastr.dart';

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
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Snack bar
            MaterialButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text(
                      'This is snack bar',
                    ),
                    duration: const Duration(
                      seconds: 10,
                    ),
                    backgroundColor: Colors.black87,
                    action: SnackBarAction(
                      label: 'OK',
                      onPressed: () {},
                      disabledTextColor: Colors.grey,
                      textColor: Colors.white,
                    ),
                  ),
                );
              },
              color: Colors.red,
              child: const Text(
                'Show Snack bar',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            //Toast
            MaterialButton(
              onPressed: () {
                showToast('This is toast');
              },
              color: Colors.red,
              child: const Text(
                'Show Toast',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

//using funtion for toast
  showToast(var message) {
    FlutterToastr.show(
      message,
      context,
      duration: FlutterToastr.lengthShort,
      position: FlutterToastr.bottom,
      backgroundColor: Colors.green,
      textStyle: const TextStyle(
        color: Colors.white,
      ),
    );
  }
}
