import 'package:flutter/material.dart';
import 'package:vroom_vroom/nav/bloc/bloc.dart';
import 'package:vroom_vroom/nav/widgets/nav_body.dart';

/// {@template nav_page}
/// A description for NavPage
/// {@endtemplate}
class NavPage extends StatelessWidget {
  /// {@macro nav_page}
  const NavPage({Key? key}) : super(key: key);

  /// The static route for NavPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const NavPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBloc(),
      child: const Scaffold(
        body: NavView(),
      ),
    );
  }    
}

/// {@template nav_view}
/// Displays the Body of NavView
/// {@endtemplate}
class NavView extends StatelessWidget {
  /// {@macro nav_view}
  const NavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NavBody();
  }
}
