import 'package:flutter/material.dart';
import 'package:vroom_vroom/chope/bloc/bloc.dart';
import 'package:vroom_vroom/chope/widgets/widgets.dart';

/// {@template chope_body}
/// Body of the ChopePage.
///
/// Add what it does
/// {@endtemplate}
class ChopeBody extends StatelessWidget {
  /// {@macro chope_body}
  const ChopeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChopeBloc, ChopeState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ChopeFace(),
              ChopeBody(),
            ],
          ),
        );
      },
    );
  }
}
