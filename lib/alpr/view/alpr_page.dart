import 'package:flutter/material.dart';
import 'package:vroom_vroom/alpr/widgets/alpr_body.dart';

/// {@template alpr_page}
/// A description for AlprPage
/// {@endtemplate}
class AlprPage extends StatelessWidget {
  /// {@macro alpr_page}
  const AlprPage({Key? key}) : super(key: key);

  /// The static route for AlprPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const AlprPage());
  }
   
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AlprView(),
    );
  } 
}

/// {@template alpr_view}
/// Displays the Body of AlprView
/// {@endtemplate}
class AlprView extends StatelessWidget {
  /// {@macro alpr_view}
  const AlprView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AlprBody();
  }
}
