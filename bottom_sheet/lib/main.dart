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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Please choose an option!',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border(
                                        top: BorderSide(
                                            color: Colors.blueAccent,
                                            width: 2,
                                            style: BorderStyle.solid),
                                        bottom: BorderSide(
                                            color: Colors.blueAccent,
                                            width: 2,
                                            style: BorderStyle.solid),
                                        left: BorderSide(
                                            color: Colors.blueAccent,
                                            width: 2,
                                            style: BorderStyle.solid),
                                        right: BorderSide(
                                            color: Colors.blueAccent,
                                            width: 2,
                                            style: BorderStyle.solid),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.android,
                                          size: 40,
                                        ),
                                        Text(
                                          'In-Game-Top-up',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    height: 100,
                                    width: 180,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      border: Border(
                                        top: BorderSide(
                                            color: Colors.blueAccent,
                                            width: 2,
                                            style: BorderStyle.solid),
                                        bottom: BorderSide(
                                            color: Colors.blueAccent,
                                            width: 2,
                                            style: BorderStyle.solid),
                                        left: BorderSide(
                                            color: Colors.blueAccent,
                                            width: 2,
                                            style: BorderStyle.solid),
                                        right: BorderSide(
                                            color: Colors.blueAccent,
                                            width: 2,
                                            style: BorderStyle.solid),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.android,
                                          size: 40,
                                        ),
                                        Text(
                                          'UID-Top-Up',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    height: 100,
                                    width: 180,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: const Text(
                  'click',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
