import 'package:flutter/material.dart';
import 'package:vroom_vroom/routes.dart';

import 'package:googleapis/drive/v3.dart' as drive;
import 'package:google_sign_in/google_sign_in.dart' as sign_in;
import 'app_ui.dart';
import 'dart:developer' as devtools show log;

Future<void> _handleSignIn() async {
  final googleSignIn =
      sign_in.GoogleSignIn.standard(scopes: [drive.DriveApi.driveScope]);
  final sign_in.GoogleSignInAccount? account = await googleSignIn.signIn();
  devtools.log("User account $account");

  // final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  // final GoogleSignInAuthentication googleAuth =
  //     await googleUser!.authentication;

  // final GoogleAuthCredential credential = GoogleAuthProvider.credential(
  //   accessToken: googleAuth.accessToken,
  //   idToken: googleAuth.idToken,
  // );

  // await FirebaseAuth.instance.signInWithCredential(credential);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _handleSignIn();
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
      initialRoute: RouteGenerator.idle,
      onGenerateRoute: RouteGenerator.generateRoute,
      // home: MultiBlocProvider(
      //   providers: [
      //     BlocProvider<NavBloc>(
      //       create: (context) => NavBloc(),
      //     ),
      //   ],
      //   child: const IdlePage(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // ),
    );
  }
}
