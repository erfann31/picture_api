import 'package:flutter/material.dart';

import 'MyImageWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Image Widget'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              height: 320,
              child: MyImageWidget(
                imageUrl:
                'http://87.107.146.132:8000/media/Specialist_images/%D9%86%DA%A9%D9%88%D8%A8%DB%8C%D9%86.jpg',
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 320,
              child: MyImageWidget(
                imageUrl:
                'http://87.107.146.132:8000/media/Specialist_images/%D9%86%DA%A9%D9%88%D8%A8%DB%8C%D9%86.jpg',
              ),
            )
          ],
        ),
      ),
    );
  }
}
