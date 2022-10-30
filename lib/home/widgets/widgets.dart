import 'package:flutter/material.dart';
import 'package:vroom_vroom/app_ui.dart';

export 'home_body.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      text: "Hello there!",
      style: VroomVroomTextStyle.title,
      children: [
        TextSpan(
          text: "Where are you headed to?",
          style: VroomVroomTextStyle.title,
        ),
      ],
    ));
  }
}
