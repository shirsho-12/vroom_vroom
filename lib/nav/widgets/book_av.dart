export 'nav_body.dart';

import 'package:flutter/material.dart';
// import 'dart:developer' as devtools show log;

class BookAVText extends StatelessWidget {
  const BookAVText({Key? key}) : super(key: key);

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
                text: 'Scan this QR code to book your AV!',
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
                text:
                    'Explore Singapore using the transport of the future with our Autonomous Vehicle taxi services.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 1,
                ),
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
