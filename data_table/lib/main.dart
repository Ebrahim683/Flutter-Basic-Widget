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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DataTable(columnSpacing: 70, columns: const [
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Age')),
          DataColumn(
            label: Text('Role'),
          ),
        ], rows: const [
          DataRow(cells: [
            DataCell(Text('Ebrahim')),
            DataCell(Text('21')),
            DataCell(Text('Software Engineer')),
          ]),
          DataRow(cells: [
            DataCell(Text('Ebrahim')),
            DataCell(Text('21')),
            DataCell(Text('Software Engineer')),
          ]),
          DataRow(cells: [
            DataCell(Text('Ebrahim')),
            DataCell(Text('21')),
            DataCell(Text('Software Engineer')),
          ]),
          DataRow(cells: [
            DataCell(Text('Ebrahim')),
            DataCell(Text('21')),
            DataCell(Text('Software Engineer')),
          ]),
          DataRow(cells: [
            DataCell(Text('Ebrahim')),
            DataCell(Text('21')),
            DataCell(Text('Software Engineer')),
          ]),
          DataRow(cells: [
            DataCell(Text('Ebrahim')),
            DataCell(Text('21')),
            DataCell(Text('Software Engineer')),
          ]),
          DataRow(cells: [
            DataCell(Text('Ebrahim')),
            DataCell(Text('21')),
            DataCell(Text('Software Engineer')),
          ]),
        ]),
      ),
    );
  }
}
