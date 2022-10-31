import 'package:flutter/material.dart';
import 'package:vroom_vroom/chope/bloc/bloc.dart';
import 'package:vroom_vroom/chope/widgets/chope_body.dart';

/// {@template chope_page}
/// A description for ChopePage
/// {@endtemplate}
class ChopePage extends StatelessWidget {
  /// {@macro chope_page}
  const ChopePage({Key? key}) : super(key: key);

  /// The static route for ChopePage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const ChopePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChopeBloc(),
      child: const Scaffold(
        body: ChopeView(),
      ),
    );
  }    
}

/// {@template chope_view}
/// Displays the Body of ChopeView
/// {@endtemplate}
class ChopeView extends StatelessWidget {
  /// {@macro chope_view}
  const ChopeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ChopeBody();
  }
}
