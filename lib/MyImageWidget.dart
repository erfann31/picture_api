import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class MyImageWidget extends StatefulWidget {
  final String imageUrl;

  const MyImageWidget({required this.imageUrl, Key? key}) : super(key: key);

  @override
  _MyImageWidgetState createState() => _MyImageWidgetState();
}

class _MyImageWidgetState extends State<MyImageWidget> {
  Uint8List? _bytesImage;

  @override
  void initState() {
    super.initState();
    _fetchImage();
  }

  Future<void> _fetchImage() async {
    try {
      Dio dio = Dio();
      Response response = await dio.get(
        widget.imageUrl,
        options: Options(
          responseType: ResponseType.bytes,
        ),
      );
      setState(() {
        _bytesImage = Uint8List.fromList(response.data);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _bytesImage != null
            ? Image.memory(
          _bytesImage!,
          fit: BoxFit.cover,
        )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
