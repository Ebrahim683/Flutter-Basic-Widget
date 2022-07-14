import 'dart:convert';

import 'package:fetching_json_dasta/DetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  var data;
  var url = "https://jsonplaceholder.typicode.com/photos";

  Future getData() async {
    var response = await http.get(Uri.parse(url));
    setState(() {
      var decode = json.decode(response.body);
      data = decode;
      print(data);
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (context, index) {
            return setList(data, index);
          }),
    );
  }

  Widget setList(var data, var index) {
    return ListTile(
      leading: Image.network(
        data[index]["url"],
        height: 60,
        width: 60,
      ),
      title: Text((data[index]["id"]).toString()),
      subtitle: Text(data[index]["title"]),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsPage(
                      receivedData: data[index],
                    )));
      },
    );
  }
}
