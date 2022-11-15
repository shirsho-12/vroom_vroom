export 'nav_body.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as devtools show log;

import 'package:vroom_vroom/nav/bloc/nav_bloc.dart';

class AttractionMain extends StatelessWidget {
  const AttractionMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double buttonWidth = width * 0.43;
    // double buttonHeight = height * 0.2;
    double extraPadding = height * 0.15;
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
                text: 'What do you want to see?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 30),
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
                        context.read<NavBloc>().add(const PlaceSelectedEvent());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        child: Image.asset(
                          'assets/images/loc_1.png',
                          width: buttonWidth,
                          // height: buttonHeight,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        devtools.log("loc_2");
                        context.read<NavBloc>().add(const PlaceSelectedEvent());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        child: Image.asset(
                          'assets/images/loc_2.png',
                          width: buttonWidth,
                          // height: buttonHeight,
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
                        context.read<NavBloc>().add(const PlaceSelectedEvent());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        child: Image.asset(
                          'assets/images/loc_3.png',
                          width: buttonWidth,
                          // height: buttonHeight,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        devtools.log("loc_4");
                        context.read<NavBloc>().add(const PlaceSelectedEvent());
                      },
                      child: Container(
                        // padding: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(4),
                        child: Image.asset(
                          'assets/images/loc_4.png',
                          width: buttonWidth,
                          // height: buttonHeight,
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
                        context.read<NavBloc>().add(const PlaceSelectedEvent());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        child: Image.asset(
                          'assets/images/loc_5.png',
                          width: buttonWidth,
                          // height: buttonHeight,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        devtools.log("loc_6");
                        context.read<NavBloc>().add(const PlaceSelectedEvent());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        child: Image.asset(
                          'assets/images/loc_6.png',
                          width: buttonWidth,
                          // height: buttonHeight,
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
