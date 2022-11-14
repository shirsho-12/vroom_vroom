import 'package:flutter/material.dart';
import 'package:vroom_vroom/app_ui.dart';
import 'package:vroom_vroom/nav/nav.dart';
import 'package:vroom_vroom/nav/widgets/attraction_main.dart';
import 'package:vroom_vroom/nav/widgets/photo_taken.dart';
import 'package:vroom_vroom/nav/widgets/place_selected.dart';
import 'package:vroom_vroom/nav/widgets/tell_joke.dart';

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
            children: [
              BlocBuilder<NavBloc, NavState>(
                builder: (context, state) {
                  if (state is BookAVState) {
                    return const BotFace(
                        imagePath: 'assets/images/happy_book_av.gif');
                  } else if (state is TakePhotoState ||
                      state is VisitPlaceState) {
                    return const BotFace(
                        imagePath:
                            'assets/images/excited_attraction_take_photo.gif');
                  } else if (state is TellMeAJokeState) {
                    return const BotFace(
                        imagePath: "assets/images/cheeky_tell_joke.gif");
                  } else if (state is TakePhotoCompleteState) {
                    return const BotFace(
                        imagePath: "assets/images/hearteyes_phoot_taken.gif");
                  } else {
                    return const BotFace(
                        imagePath: 'assets/images/idle_menu.gif');
                  }
                },
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: NavAppBar(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<NavBloc, NavState>(
              builder: (context, state) {
                if (state is BookAVState) {
                  return const BookAV();
                } else if (state is VisitPlaceState) {
                  return const AttractionMain();
                } else if (state is TellMeAJokeState) {
                  return const TellJoke();
                } else if (state is TakePhotoState) {
                  return const CameraScreen();
                } else if (state is TakePhotoCompleteState) {
                  return const PhotoTakenScreen();
                } else if (state is PlaceSelectedState) {
                  return const PlaceSelectedScreen();
                } else {
                  return const BookAV();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
