import 'package:flutter/material.dart';
import 'package:vroom_vroom/routes.dart';

import 'app_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: VroomVroomColors.getSwatch(VroomVroomColors.module),
        iconTheme: const IconThemeData(color: VroomVroomColors.darkBlue),
      ),
      initialRoute: RouteGenerator.dropOff,
      onGenerateRoute: RouteGenerator.generateRoute,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
