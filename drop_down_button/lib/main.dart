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
  var _value = 'Choose one';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_value),
              const SizedBox(
                height: 20,
              ),
              DropdownButton(
                hint: const Text(
                  'Click for more option',
                ),
                iconSize: 40,
                items: const [
                  DropdownMenuItem(
                    child: Text(
                      'Subhanallah',
                    ),
                    value: 'Subhanallah',
                  ),
                  DropdownMenuItem(
                    child: Text(
                      'Alhamdulillah',
                    ),
                    value: 'Ashamedly',
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _value = value.toString();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(_value),
                        duration: const Duration(
                          seconds: 5,
                        ),
                        action: SnackBarAction(
                          label: 'Ok',
                          onPressed: () {},
                        ),
                      ),
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
