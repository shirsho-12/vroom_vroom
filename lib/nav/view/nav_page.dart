import 'package:flutter/material.dart';
import 'package:vroom_vroom/nav/bloc/bloc.dart';
import 'package:vroom_vroom/nav/widgets/nav_body.dart';

/// {@template nav_page}
/// A description for NavPage
/// {@endtemplate}
class NavPage extends StatelessWidget {
  /// {@macro nav_page}
  final int val;
  const NavPage({required this.val, Key? key}) : super(key: key);

  /// The static route for NavPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const NavPage(val: 0));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBloc(val),
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
