import 'package:flutter/material.dart';
// import 'package:vroom_vroom/alpr/view/alpr_page.dart';
import 'package:vroom_vroom/home/view/home_page.dart';
import 'package:vroom_vroom/idle/idle.dart';
import 'package:vroom_vroom/nav/view/nav_page.dart';

class RouteGenerator {
  static const String homePage = '/';
  static const String idle = '/idle';
  static const String navPage = '/nav';
  static const String visitPlacePage = '/visit_place';
  static const String bookAvPage = '/book_av';
  static const String takePhotoPage = '/take_photo';
  static const String tellJokePage = '/tell_joke';
  static const String waitAV = '/wait_av';
  // static const String alpr = '/alpr';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case idle:
        return MaterialPageRoute(builder: (_) => const IdlePage());
      // case alpr:
      // return MaterialPageRoute(builder: (_) => const AlprPage());
      case tellJokePage:
        return MaterialPageRoute(builder: (_) => const NavPage(val: 4));
      case takePhotoPage:
        return MaterialPageRoute(builder: (_) => const NavPage(val: 3));
      case bookAvPage:
        return MaterialPageRoute(builder: (_) => const NavPage(val: 2));
      case visitPlacePage:
        return MaterialPageRoute(builder: (_) => const NavPage(val: 1));
      case navPage:
        return MaterialPageRoute(builder: (_) => const NavPage(val: 0));

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
