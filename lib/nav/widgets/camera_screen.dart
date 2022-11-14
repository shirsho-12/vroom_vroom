import 'dart:io';

import 'package:camera/camera.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:developer' as devtools show log;

import 'package:googleapis/drive/v3.dart' as drive;
import 'package:googleapis/drive/v3.dart' as ga;

import 'package:google_sign_in/google_sign_in.dart' as sign_in;
import 'package:vroom_vroom/auth/google_auth_client.dart';
import 'package:vroom_vroom/nav/bloc/bloc.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 200),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Taking photo liao...\nPlease stand in the circle.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Stack(
              children: [
                FutureBuilder(
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
                          return CameraWidget(camera: snapshot.data[1]);
                        }
                    }
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CameraWidget extends StatefulWidget {
  const CameraWidget({required this.camera, Key? key}) : super(key: key);
  final CameraDescription camera;
  @override
  State<CameraWidget> createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  late final CameraController controller;
  bool isComplete = false;

  Future<String?> _getFolderId(drive.DriveApi driveApi) async {
    const mimeType = "application/vnd.google-apps.folder";
    String folderName = "vroom_vroom";

    try {
      final found = await driveApi.files.list(
        q: "mimeType = '$mimeType' and name = '$folderName'",
        $fields: "files(id, name)",
      );
      final files = found.files;
      // The folder already exists
      if (files!.isNotEmpty) {
        return files.first.id;
      }

      // Create a folder
      var folder = drive.File();
      folder.name = folderName;
      folder.mimeType = mimeType;
      final folderCreation = await driveApi.files.create(folder);
      devtools.log("Folder ID: ${folderCreation.id}");

      return folderCreation.id;
    } catch (e) {
      devtools.log(e.toString());
      return null;
    }
  }

  Future<void> uploadPhoto(XFile photo) async {
    final googleSignIn =
        sign_in.GoogleSignIn.standard(scopes: [drive.DriveApi.driveScope]);
    final sign_in.GoogleSignInAccount? account = await googleSignIn.signIn();
    devtools.log("User account $account");

    final authHeaders = await account?.authHeaders;
    final authenticateClient = GoogleAuthClient(authHeaders!);
    final driveApi = drive.DriveApi(authenticateClient);
    File file = File(photo.path);

    ga.File fileToUpload = ga.File();
    final folderId = await _getFolderId(driveApi);
    devtools.log("Folder ID: $folderId");
    fileToUpload.parents = [folderId!];
    fileToUpload.name = 'test_${DateTime.now()}.jpg';
    var result = await driveApi.files.create(
      fileToUpload,
      uploadMedia: ga.Media(file.openRead(), file.lengthSync()),
    );
    // var x = driveApi.files.get(result.id!);
    // devtools.log("File ID: ${result.id}");
    // final Stream<List<int>> mediaStream = photo.openRead();
    // var media = drive.Media(mediaStream, 2);
    // var driveFile = drive.File();
    // // final timestamp = DateFormat("yyyy-MM-dd-hhmmss").format(DateTime.now());
    // driveFile.name = "test.jpg";
    // final result = await driveApi.files.create(driveFile, uploadMedia: media);
    // devtools.log("Upload result: $result");
    // // devtools.log("Upload result: ${result}");
    // devtools.log("Upload result: ${result.thumbnailLink}");
    // devtools.log("Web Content result: ${result.webContentLink}");
    // devtools.log("Web View result: ${result.webViewLink}");
    // devtools.log("ID result: ${result.id}");
    // devtools.log("Permissions result: ${result.permissions}");
  }

  @override
  void initState() {
    super.initState();
    controller = CameraController(widget.camera, ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            devtools.log('User denied camera access.');
            break;
          default:
            devtools.log('Handle other errors.');
            break;
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isComplete) {
      context.read<NavBloc>().add(const TakePhotoCompleteEvent());
    }
    return !controller.value.isInitialized
        ? Container()
        : Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 450,
                height: 450,
                child: CameraPreview(controller),
              ),
              !isComplete
                  ? CircularCountDownTimer(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 2,
                      duration: 6,
                      fillColor: Colors.red.withOpacity(0.0),
                      ringColor: Colors.black.withOpacity(0.0),
                      backgroundColor: Colors.red.withOpacity(0.6),
                      textStyle: const TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textFormat: CountdownTextFormat.S,
                      controller: CountDownController(),
                      isReverse: true,
                      onStart: () {
                        debugPrint('Countdown Started');
                      },
                      onComplete: () async {
                        debugPrint('Countdown Ended');

                        final image = await controller.takePicture();
                        if (!mounted) return;
                        devtools.log(image.path);
                        uploadPhoto(image);
                        if (await Permission.storage.request().isGranted) {
                          // code of read or write file in external storage (SD card)
                          GallerySaver.saveImage(image.path);
                        }
                        setState(() {
                          isComplete = true;
                        });
                        // TODO: BloC to move to QR
                      },
                      onChange: (String timeStamp) {
                        debugPrint('Countdown Changed $timeStamp');
                      },
                    )
                  : RichText(
                      text: const TextSpan(
                      text: 'Photo taken!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.2,
                      ),
                    )),
            ],
          );
  }
}
