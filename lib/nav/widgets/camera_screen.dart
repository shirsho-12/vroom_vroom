import 'package:camera/camera.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:developer' as devtools show log;

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
            const SizedBox(height: 100),
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
