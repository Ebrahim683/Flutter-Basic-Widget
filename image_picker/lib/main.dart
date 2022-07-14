import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_pickers/image_pickers.dart';

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
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? _image;

  Future cameraImage() async {
    var image = await ImagePickers.pickerPaths(
        galleryMode: GalleryMode.image,
        uiConfig: UIConfig(uiThemeColor: UIConfig.defUiThemeColor),
        selectCount: 1,
        showCamera: false,
        showGif: true,
        cropConfig: CropConfig(enableCrop: false, width: 2, height: 3),
        compressSize: 500);
    setState(() {
      _image = image as File;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.blueAccent,
                child: Center(
                  child: _image == null
                      ? const Text('No image found')
                      : Image.file(_image!),
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      cameraImage();
                    },
                    backgroundColor: Colors.pinkAccent,
                    child: const Icon(
                      Icons.camera,
                      color: Colors.yellow,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.pinkAccent,
                    child: const Icon(
                      Icons.image,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
