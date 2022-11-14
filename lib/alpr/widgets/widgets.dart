export 'alpr_body.dart';

import 'dart:developer' as devtools show log;
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:pytorch_mobile/model.dart';
import 'package:pytorch_mobile/pytorch_mobile.dart';

class ALPRCamera extends StatefulWidget {
  const ALPRCamera({required this.camera, Key? key}) : super(key: key);
  final CameraDescription camera;
  @override
  State<ALPRCamera> createState() => _ALPRCameraState();
}

class _ALPRCameraState extends State<ALPRCamera> {
  late final CameraController controller;
  late Model model;
  late CameraImage _savedImage;
  Future<void> getModel() async {
    model = await PyTorchMobile.loadModel('assets/models/yolov5s.pt');
  }

  void _processCameraImage(CameraImage image) async {
    setState(() {
      _savedImage = image;
    });
  }

  @override
  void initState() {
    super.initState();
    controller = CameraController(widget.camera, ResolutionPreset.max);
    getModel();

    controller.initialize().then((_) async {
      if (!mounted) {
        return;
      }
      setState(() {});
      await controller
          .startImageStream((CameraImage image) => _processCameraImage(image));
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

  Future<List<dynamic>?> getPreds(File image) async {
    final Future<List<dynamic>?> preds = model.getImagePredictionList(
      image,
      640,
      640,
      mean: [0.485, 0.456, 0.406],
      std: [0.229, 0.224, 0.225],
    );
    return preds;
  }

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    // final deviceRatio = size.width / size.height;
    // return Transform.scale(
    //   scale: controller.value.aspectRatio / deviceRatio,
    //   child: Center(
    //     child: AspectRatio(
    //       aspectRatio: controller.value.aspectRatio,
    //       child: CameraPreview(controller),
    //     ),
    //   ),
    // );
    // return Container();
    if (!controller.value.isInitialized) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    final size = MediaQuery.of(context).size;
    final deviceRatio = size.width / size.height;
    final xScale = controller.value.aspectRatio / deviceRatio;
    bool takePicture = true;
// // Modify the yScale if you are in Landscape
    const double yScale = 1;
    return Stack(children: [
      AspectRatio(
        aspectRatio: deviceRatio,
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.diagonal3Values(xScale, yScale, 1),
          child: CameraPreview(controller),
        ),
      ),
      FutureBuilder(
          future: getModel(),
          builder: (context, snapshot) {
            print(_savedImage.toString());
            final File image = File(_savedImage.toString());
            if (snapshot.connectionState == ConnectionState.done) {
              return FutureBuilder<List<dynamic>?>(
                future: getPreds(image),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    devtools.log(snapshot.data.toString());
                    print(snapshot.data.toString());
                    setState(() {
                      takePicture = true;
                    });
                    return Text(snapshot.data.toString());
                  } else {
                    return const Text('No data');
                  }
                },
              );
            } else {
              return const Text('No data');
            }
          })
    ]);

    // return
  }
}

// class ALPRBackbone extends StatefulWidget {
//   const ALPRBackbone({Key? key}) : super(key: key);

//   @override
//   State<ALPRBackbone> createState() => _ALPRBackboneState();
// }

// class _ALPRBackboneState extends State<ALPRBackbone> {
//   // late Model model;

//   @override
//   void initState() async {
//     // model = await PyTorchMobile.loadModel('models/yolov5s.pt');
//     super.initState();
//   }

//   Future<List<dynamic>?> getPreds(File image) async {
//     final Future<List<dynamic>?> preds = model.getImagePredictionList(
//       image,
//       640,
//       640,
//       mean: [0.485, 0.456, 0.406],
//       std: [0.229, 0.224, 0.225],
//     );
//     return preds;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
