import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

class TakePhoto extends StatelessWidget {
  const TakePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Follow me!\nLet me bring you here...',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                devtools.log("Take a photo here");
              },
              child: Image.asset(
                'assets/images/fire_station.png',
                width: 450,
                // height: 150,
              ),
            )
          ],
        ),
      ),
    );
  }
}
