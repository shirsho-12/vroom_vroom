import 'package:flutter/material.dart';
import 'package:vroom_vroom/home/view/home_page.dart';
import 'package:vroom_vroom/idle/idle.dart';
import 'package:vroom_vroom/nav/view/nav_page.dart';

// TODO: Integrate blocs into the nav routes

class RouteGenerator {
  static const String homePage = '/';
  static const String idle = '/idle';
  static const String navPage = '/nav';
  static const String visitPlacePage = '/nav';
  static const String bookAvPage = '/nav';
  static const String takePhotoPage = '/nav';
  static const String tellJokePage = '/nav';
  static const String waitAV = '/wait_av';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case idle:
        return MaterialPageRoute(builder: (_) => const IdlePage());
      case tellJokePage:
      // ignore: no_duplicate_case_values
      case takePhotoPage:
      // ignore: no_duplicate_case_values
      case bookAvPage:
      // ignore: no_duplicate_case_values
      case visitPlacePage:
      // ignore: no_duplicate_case_values
      case navPage:
        return MaterialPageRoute(builder: (_) => const NavPage());

      case waitAV:
      // return MaterialPageRoute(builder: (_) => const WaitAVPage());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('404 Route Not Found'),
                  ),
                ));
    }
  }
}
