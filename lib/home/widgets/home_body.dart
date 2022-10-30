import 'package:flutter/material.dart';
import 'package:vroom_vroom/app_ui.dart';
import 'package:vroom_vroom/home/widgets/widgets.dart';

/// {@template home_body}
/// Body of the HomePage.
///
/// Add what it does
/// {@endtemplate}
class HomeBody extends StatelessWidget {
  /// {@macro home_body}
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          const BotFace(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(height: 200),
              HelpText(),
              SizedBox(height: 20),
              ButtonGrid(),
            ],
          ),
        ],
      ),
    );
  }
}
