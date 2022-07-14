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
  var _state = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
                firstChild: Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text('Log in successful'),
                              duration: Duration(seconds: 5),
                            ));
                          },
                          child: const Text(
                            'Login',
                          ),
                          color: Colors.red,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              _state = false;
                            });
                          },
                          child: const Text(
                            'Sign Up',
                          ),
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
                secondChild: Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text('sign up successful'),
                              duration: Duration(seconds: 5),
                            ));
                          },
                          child: const Text(
                            'Sign up',
                          ),
                          color: Colors.red,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              _state = true;
                            });
                          },
                          child: const Text(
                            'Login',
                          ),
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
                crossFadeState: _state
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(seconds: 2)),
          ],
        ),
      ),
    );
  }
}
