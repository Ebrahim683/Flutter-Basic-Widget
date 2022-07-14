import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen/HomePage.dart';
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
  setData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('loggedIn', true);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  getData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPreferences.getBool('loggedIn') ?? false;
    if (isLoggedIn == true) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'First board',
          body: 'This is first board',
          image: Image.asset('images/one.png'),
        ),
        PageViewModel(
          title: 'Second board',
          body: 'This is second board',
          image: Image.asset('images/two.png'),
        ),
        PageViewModel(
          title: 'Third board',
          body: 'This is third board',
          image: Image.asset('images/three.png'),
        ),
      ],
      onDone: () {
        setData();
      },
      done: const Text('Done'),
      showSkipButton: true,
      skip: const Text('Skip'),
      next: const Text('Next'),
      showNextButton: true,
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        activeSize: Size(15.0, 10.0),
        color: Colors.green,
        activeColor: Colors.deepOrange,
      ),
    );
  }
}
