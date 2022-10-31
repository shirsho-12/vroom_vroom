import 'package:flutter/material.dart';
import 'package:vroom_vroom/app_ui.dart';
import 'package:vroom_vroom/nav/nav.dart';

import 'camera_screen.dart';

// import 'package:vroom_vroom/nav/widgets/widgets.dart';

/// {@template nav_body}
/// Body of the NavPage.
///
/// Add what it does
/// {@endtemplate}
class NavBody extends StatelessWidget {
  /// {@macro nav_body}
  const NavBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          Column(
            children: const [
              BotFace(),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: NavAppBar(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<NavBloc, NavState>(
              builder: (context, state) {
                return const CameraScreen();
              },
            ),
          )
        ],
      ),
    );
  }
}
