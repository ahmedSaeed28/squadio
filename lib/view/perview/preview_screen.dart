import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PreviewScreen extends StatelessWidget {

  final String image = Get.arguments;
  PreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () => Get.back(),
            ),
          ),
          Center(
              child: Image.network(image),
          ),
        ],
      )
    );
  }
}
