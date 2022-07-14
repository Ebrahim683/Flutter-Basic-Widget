import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver AppBar'),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
                listTile("Email", "email@email.com", Icons.email, Icons.send),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget listTile(
    String title, String subTitle, IconData leading, IconData trailing) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.green, Colors.blue],
      ),
    ),
    child: ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      leading: Icon(leading),
      trailing: Icon(trailing),
    ),
  );
}
