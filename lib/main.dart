import 'package:flutter/material.dart';

import 'MyImageWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Image Widget'),
        ),
        body: const Center(
          child: MyImageWidget(imageUrl: 'http://87.107.146.132:8000/media/Specialist_images/LOGO_copy_T8GA3tf.png',),
        ),
      ),
    );
  }
}
