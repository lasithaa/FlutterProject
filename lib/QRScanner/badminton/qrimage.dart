import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRimage extends StatelessWidget {
  const QRimage({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' GYM QR code'),
        centerTitle: true,
      ),
      body: Center(
        child: QrImageView(
          data: controller.text,
          size: 200,
          embeddedImageStyle: const QrEmbeddedImageStyle(
              size: Size(
            100,
            100,
          )),
        ),
      ),
    );
  }
}
