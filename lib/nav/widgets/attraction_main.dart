export 'nav_body.dart';

import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

class AttractionMain extends StatelessWidget {
  const AttractionMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'What do you want to see?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        devtools.log("loc_1");
                      },
                      child: Container(
                        // padding: const EdgeInsets.all(4),
                        child: Image.asset(
                          'assets/images/loc_1.png',
                          width: 180,
                          // height: 150,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        devtools.log("loc_2");
                      },
                      child: Container(
                        // padding: const EdgeInsets.all(4),
                        child: Image.asset(
                          'assets/images/loc_2.png',
                          width: 180,
                          // height: 80,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        devtools.log("loc_3");
                      },
                      child: Container(
                        // padding: const EdgeInsets.all(4),
                        child: Image.asset(
                          'assets/images/loc_3.png',
                          width: 180,
                          // height: 80,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        devtools.log("loc_4");
                      },
                      child: Container(
                        // padding: const EdgeInsets.all(8),
                        // padding: const EdgeInsets.all(4),
                        child: Image.asset(
                          'assets/images/loc_4.png',
                          width: 180,
                          // height: 80,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        devtools.log("loc_5");
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        child: Image.asset(
                          'assets/images/loc_5.png',
                          width: 180,
                          // height: 80,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        devtools.log("loc_6");
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        child: Image.asset(
                          'assets/images/loc_6.png',
                          width: 180,
                          // height: 80,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
