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
                'http://87.107.146.132:8050/media/logo_images/LOGO-copy_1_copy.png',
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 320,
              child: MyImageWidget(
                imageUrl:
                'http://87.107.146.132:8000/media/Specialist_images/LOGO_copy_T8GA3tf.png',
              ),
            )
          ],
        ),
      ),
    );
  }
}
