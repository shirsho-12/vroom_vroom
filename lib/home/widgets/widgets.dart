export 'home_body.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

import 'package:vroom_vroom/routes.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HelpText extends StatelessWidget {
  const HelpText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      RichText(
        text: const TextSpan(
          text: 'Hi there!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
            letterSpacing: 1.5,
          ),
        ),
      ),
      const SizedBox(height: 10),
      RichText(
        text: const TextSpan(
          text: 'How can I help you?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
            letterSpacing: 1.5,
          ),
        ),
      ),
    ]);
  }
}

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                devtools.log("Book AV");
                Navigator.of(context).pushNamed(RouteGenerator.bookAvPage);
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                child: Image.asset(
                  'assets/images/book_av.png',
                  width: 180,
                  // height: 150,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                devtools.log("Visit Place");
                Navigator.of(context).pushNamed(RouteGenerator.visitPlacePage);
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                child: Image.asset(
                  'assets/images/visit_place.png',
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
                devtools.log("Take Photo");
                Navigator.of(context).pushNamed(RouteGenerator.takePhotoPage);
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                child: Image.asset(
                  'assets/images/take_photo.png',
                  width: 180,
                  // height: 80,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                devtools.log("Tell Joke");
                Navigator.of(context).pushNamed(RouteGenerator.tellJokePage);
              },
              child: Container(
                // padding: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(4),
                child: Image.asset(
                  'assets/images/tell_joke.png',
                  width: 180,
                  // height: 80,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
