import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  var receivedData;

  DetailsPage({this.receivedData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              receivedData["thumbnailUrl"],
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(receivedData["title"]),
          ],
        ),
      ),
    );
  }
}
