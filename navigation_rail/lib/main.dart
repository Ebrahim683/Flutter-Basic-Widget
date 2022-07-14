import 'package:flutter/material.dart';
import 'package:navigation_rail/PageOne.dart';
import 'package:navigation_rail/PageTwo.dart';

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
  var selectedIndex = 0;
  final _pages = [const PageOne(), const PageTwo()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            NavigationRail(
              backgroundColor: Colors.purple,
              labelType: NavigationRailLabelType.all,
              selectedLabelTextStyle: const TextStyle(color: Colors.yellow),
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(
                    Icons.wifi,
                    color: Colors.white,
                  ),
                  selectedIcon: Icon(
                    Icons.wifi,
                    color: Colors.yellow,
                  ),
                  label: Text(
                    "Wifi",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  selectedIcon: Icon(
                    Icons.settings,
                    color: Colors.yellow,
                  ),
                  label: Text(
                    "Setting",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
            ),
            Expanded(
              child: Container(
                child: _pages[selectedIndex],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
