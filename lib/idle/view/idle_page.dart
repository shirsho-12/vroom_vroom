import 'package:flutter/material.dart';
import 'package:vroom_vroom/idle/widgets/idle_body.dart';

/// {@template idle_page}
/// A description for IdlePage
/// {@endtemplate}
class IdlePage extends StatelessWidget {
  /// {@macro idle_page}
  const IdlePage({Key? key}) : super(key: key);

  /// The static route for IdlePage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const IdlePage());
  }
   
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IdleView(),
    );
  } 
}

/// {@template idle_view}
/// Displays the Body of IdleView
/// {@endtemplate}
class IdleView extends StatelessWidget {
  /// {@macro idle_view}
  const IdleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IdleBody();
  }
}
