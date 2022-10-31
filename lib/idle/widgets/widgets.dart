import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

import 'package:vroom_vroom/routes.dart';
export 'idle_body.dart';

class CenterButton extends StatelessWidget {
  const CenterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          devtools.log("Touched");
          Navigator.of(context).pushReplacementNamed(RouteGenerator.homePage);
        },
        child: Container(
          width: 300,
          height: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'TOUCH ME\n\nTO SEE WHAT I CAN DO!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
