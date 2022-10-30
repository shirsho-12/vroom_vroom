import 'package:flutter/material.dart';
import 'package:vroom_vroom/drop_off/bloc/bloc.dart';
import 'package:vroom_vroom/drop_off/widgets/drop_off_body.dart';

import '../../app_ui.dart';

/// {@template drop_off_page}
/// A description for DropOffPage
/// {@endtemplate}
class DropOffPage extends StatelessWidget {
  /// {@macro drop_off_page}
  const DropOffPage({Key? key}) : super(key: key);

  /// The static route for DropOffPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const DropOffPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DropOffBloc(),
      child: const Scaffold(
        body: DropOffView(),
      ),
    );
  }
}

/// {@template drop_off_view}
/// Displays the Body of DropOffView
/// {@endtemplate}
class DropOffView extends StatelessWidget {
  /// {@macro drop_off_view}
  const DropOffView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drop off'), // style: VroomVroomTextStyle.title),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const DropOffBody(),
    );
  }
}
