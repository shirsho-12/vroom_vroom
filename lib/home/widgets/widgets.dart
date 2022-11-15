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
    double width = MediaQuery.of(context).size.width;
    double textSize = width / 12;
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      RichText(
        text: TextSpan(
          text: 'Hi there!',
          style: TextStyle(
            color: Colors.white,
            fontSize: textSize,
            fontWeight: FontWeight.w300,
            letterSpacing: 1.5,
          ),
        ),
      ),
      const SizedBox(height: 10),
      RichText(
        text: TextSpan(
          text: 'How can I help you?',
          style: TextStyle(
            color: Colors.white,
            fontSize: textSize,
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // print('width: $width');
    // print('height: $height');

    double buttonWidth = width * 0.45;
    double buttonHeight = height * 0.15;
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
                // context.read<NavBloc>().add(const BookAVEvent());
                Navigator.of(context).pushNamed(RouteGenerator.bookAvPage);
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                child: Image.asset(
                  'assets/images/book_av.png',
                  width: buttonWidth,
                  height: buttonHeight,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                devtools.log("Visit Place");
                // context.read<NavBloc>().add(const VisitPlaceEvent());
                Navigator.of(context).pushNamed(RouteGenerator.visitPlacePage);
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                child: Image.asset(
                  'assets/images/visit_place.png',
                  width: buttonWidth,
                  height: buttonHeight,
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
                // context.read<NavBloc>().add(const TakePhotoEvent());
                Navigator.of(context).pushNamed(RouteGenerator.takePhotoPage);
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                child: Image.asset(
                  'assets/images/take_photo.png',
                  width: buttonWidth,
                  height: buttonHeight,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                devtools.log("Tell Joke");
                // context.read<NavBloc>().add(const TellMeAJokeEvent());
                Navigator.of(context).pushNamed(RouteGenerator.tellJokePage);
              },
              child: Container(
                // padding: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(4),
                child: Image.asset(
                  'assets/images/tell_joke.png',
                  width: buttonWidth,
                  height: buttonHeight,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
