import 'package:flutter/material.dart';
import 'package:vroom_vroom/drop_off/bloc/bloc.dart';

/// {@template drop_off_body}
/// Body of the DropOffPage.
///
/// Add what it does
/// {@endtemplate}
class DropOffBody extends StatelessWidget {
  /// {@macro drop_off_body}
  const DropOffBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [

        BlocBuilder<DropOffBloc, DropOffState>(
          builder: (context, state) {
            return Text(state.customProperty);
          },
        ),
      ],
    );
  }
}
