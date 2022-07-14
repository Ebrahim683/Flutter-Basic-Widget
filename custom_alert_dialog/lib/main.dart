import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
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
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: MaterialButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      backgroundColor: Colors.greenAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          overflow: Overflow.visible,
                          children: [
                            Positioned(
                              top: -50,
                              child: CircleAvatar(
                                radius: 50,
                                child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        50,
                                      ),
                                    ),
                                    child: Image.asset("assets/noti.png")),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    20,
                                  ),
                                ),
                              ),
                              height: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    'Alert dialog',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    'This is a custom alert dialog. It has made with Dialog widget.This is a custom alert dialog. It has made with Dialog widget.This is a custom alert dialog. It has made with Dialog widget.This is a custom alert dialog. It has made with Dialog widget.This is a custom alert dialog. It has made with Dialog widget.',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
            color: Colors.redAccent,
            child: const Text('Custom dialog'),
          ),
        ),
      ),
    );
  }
}
