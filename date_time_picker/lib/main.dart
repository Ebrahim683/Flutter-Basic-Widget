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
  DateTime? _dateTime;
  TimeOfDay? _timeOfDay;

  datePicker() async {
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 20),
        lastDate: DateTime(DateTime.now().year + 10));
    setState(() {
      _dateTime = dateTime;
    });
  }

  timePicker() async {
    TimeOfDay? timeOfDay =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    setState(() {
      _timeOfDay = timeOfDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(_dateTime == null
                ? 'Choose a date'
                : 'Date: ${_dateTime?.day}/${_dateTime?.month}/${_dateTime?.year}'),
            RaisedButton(
              onPressed: () {
                datePicker();
              },
              child: const Text('Date Picker'),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(_timeOfDay == null
                ? 'Choose a time'
                : 'Time: ${_timeOfDay?.hour}:${_timeOfDay?.minute}'),
            RaisedButton(
              onPressed: () {
                timePicker();
              },
              child: const Text('Time Picker'),
            )
          ],
        ),
      ),
    );
  }
}
