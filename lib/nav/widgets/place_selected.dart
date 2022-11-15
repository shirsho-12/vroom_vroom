export 'nav_body.dart';

import 'package:flutter/material.dart';
// import 'dart:developer' as devtools show log;

class PlaceSelectedScreen extends StatelessWidget {
  const PlaceSelectedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double extraPadding = height * 0.1;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: extraPadding),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Scan this QR code to read the guide!',
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
                  text: 'For more info, go to ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1,
                  ),
                  children: [
                    TextSpan(
                      text: '\nhttps://www.visitsingapore.com/en',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                    TextSpan(
                      text: '\nEnjoy your trip!',
                    )
                  ]),
            ),
            const SizedBox(height: 40),
            Image.asset(
              'assets/images/attractions_qr.png',
              width: 180,
              // height: 150,
            )
          ],
        ),
      ),
    );
  }
}
