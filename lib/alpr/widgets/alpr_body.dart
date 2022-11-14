import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:vroom_vroom/alpr/widgets/widgets.dart';
// import 'package:vroom_vroom/alpr/widgets/widgets.dart';

/// {@template alpr_body}
/// Body of the AlprPage.
///
/// Add what it does
/// {@endtemplate}
class AlprBody extends StatelessWidget {
  /// {@macro alpr_body}
  const AlprBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: availableCameras(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return const Center(
              child: CircularProgressIndicator(),
            );
          default:
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return ALPRCamera(camera: snapshot.data[0]);
            }
        }
      },
    );
  }
}
