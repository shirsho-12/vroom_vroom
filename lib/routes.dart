import 'package:flutter/material.dart';
import 'package:vroom_vroom/home/view/home_page.dart';
import 'package:vroom_vroom/idle/idle.dart';

class RouteGenerator {
  static const String homePage = '/';
  static const String idle = '/idle';
  static const String selectAV = '/select_av';
  static const String waitAV = '/wait_av';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case idle:
        return MaterialPageRoute(builder: (_) => const IdlePage());
      case selectAV:
      // return MaterialPageRoute(builder: (_) => const SelectAVPage());
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
