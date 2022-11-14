export 'nav_body.dart';

import 'package:flutter/material.dart';
// import 'dart:developer' as devtools show log;

class PhotoTakenScreen extends StatefulWidget {
  const PhotoTakenScreen({Key? key}) : super(key: key);

  @override
  State<PhotoTakenScreen> createState() => _PhotoTakenScreenState();
}

class _PhotoTakenScreenState extends State<PhotoTakenScreen> {
  GlobalKey globalKey = GlobalKey();

  // Future<void> _captureAndSharePng() async {
  //   try {
  //     RenderObject? boundary = globalKey.currentContext?.findRenderObject();
  //     var image = await boundary.toImage();
  //     ByteData? byteData = await image.toByteData(format: ImageByteFormat.png);
  //     Uint8List pngBytes = byteData!.buffer.asUint8List();

  //     final tempDir = await getTemporaryDirectory();
  //     final file = await File('${tempDir.path}/image.png').create();
  //     await file.writeAsBytes(pngBytes);

  //     const channel = const MethodChannel('channel:me.alfian.share/share');
  //     channel.invokeMethod('shareFile', 'image.png');
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: "Here’s your photo, scan\nthis QR code to save it!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: "Don’t forget to hashtag ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 1,
                ),
                children: [
                  TextSpan(
                    text: "#visitSingapore #chopebot",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  TextSpan(
                    text: "\nwhen posting them on social media!",
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            Image.asset(
              'assets/images/av_qr.png',
              width: 180,
              // height: 150,
            )
          ],
        ),
      ),
    );
  }
}
