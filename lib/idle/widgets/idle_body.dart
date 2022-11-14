import 'package:flutter/material.dart';
import 'package:vroom_vroom/app_ui.dart';
import 'package:vroom_vroom/idle/widgets/widgets.dart';

/// {@template idle_body}
/// Body of the IdlePage.
///
/// Add what it does
/// {@endtemplate}
class IdleBody extends StatelessWidget {
  /// {@macro idle_body}
  const IdleBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Background(),
          BotFace(
            imagePath: "assets/images/idle_menu.gif",
          ),
          CenterButton(),
        ],
      ),
    );
  }
}
