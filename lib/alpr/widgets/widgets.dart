export 'alpr_body.dart';

import 'dart:developer' as devtools show log;
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ml_kit_ocr/ml_kit_ocr.dart';
import 'package:permission_handler/permission_handler.dart';

// import 'package:google_ml_kit/google_ml_kit.dart';
// import 'package:pytorch_mobile/model.dart';
// import 'package:pytorch_mobile/pytorch_mobile.dart';

class ALPRCamera extends StatefulWidget {
  const ALPRCamera({required this.camera, Key? key}) : super(key: key);
  final CameraDescription camera;
  @override
  State<ALPRCamera> createState() => _ALPRCameraState();
}

class _ALPRCameraState extends State<ALPRCamera> {
  late final CameraController controller;
  // late Model model;
  late CameraImage _savedImage;
  late RecognisedText result;
  final MlKitOcr ocr = MlKitOcr();

  Future<String> _processCameraImage(CameraImage cameraImage) async {
    final WriteBuffer allBytes = WriteBuffer();
    for (Plane plane in cameraImage.planes) {
      allBytes.putUint8List(plane.bytes);
    }
    final bytes = allBytes.done().buffer.asUint8List();

    final Size imageSize =
        Size(cameraImage.width.toDouble(), cameraImage.height.toDouble());

    final inputImageData = InputImageData(
      size: imageSize,
      imageRotation: InputImageRotation.Rotation_0deg,
      planeData: [
        InputImagePlaneMetadata(
          bytesPerRow: cameraImage.planes[0].bytesPerRow,
          height: cameraImage.planes[0].height,
          width: cameraImage.planes[0].width,
        ),
        InputImagePlaneMetadata(
          bytesPerRow: cameraImage.planes[1].bytesPerRow,
          height: cameraImage.planes[1].height,
          width: cameraImage.planes[1].width,
        ),
        InputImagePlaneMetadata(
          bytesPerRow: cameraImage.planes[2].bytesPerRow,
          height: cameraImage.planes[2].height,
          width: cameraImage.planes[2].width,
        ),
      ],
      inputImageFormat:
          InputImageFormatMethods.fromRawValue(cameraImage.format.raw) ??
              InputImageFormat.NV21,
    );

    final inputImage =
        InputImage.fromBytes(bytes: bytes, inputImageData: inputImageData);

    final result = await ocr.processImage(InputImage.fromBytes(
      bytes: bytes,
      inputImageData: inputImageData,
    ));
    String output = '';
    for (TextBlock block in result.blocks) {
      for (TextLine line in block.lines) {
        for (TextElement element in line.elements) {
          devtools.log(element.text);
          output += element.text;
        }
      }
    }
    setState(() {
      _savedImage = cameraImage;
    });
    return output;
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
    super.initState();
    controller = CameraController(widget.camera, ResolutionPreset.max);
    // getModel();
    controller.initialize().then((_) async {
      if (!mounted) {
        return;
      }
      setState(() {});
      await Permission.camera.request();

      // await controller
      // .startImageStream((CameraImage image) => _processCameraImage(image));
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
    // controller.takePicture();
    return Stack(children: [
      Center(
        child: SizedBox(
          width: 450,
          height: 600,
          child: CameraPreview(controller),
        ),
      ),
      const Center(
          // child: FutureBuilder<String>(
          // future: controller.takePicture().then(
          // (value) => _processCameraImage(Image.file(File(value.path)))),
          // builder: (context, snapshot) {
          child: Text(
        'Hello',
        style: TextStyle(
          color: Colors.black,
          fontSize: 50,
        ),
      )
          // }),
          ),
    ]);

    // return
  }
}

class MLKitOCR extends StatefulWidget {
  const MLKitOCR({Key? key}) : super(key: key);

  @override
  State<MLKitOCR> createState() => _MLKitOCRState();
}

class _MLKitOCRState extends State<MLKitOCR> {
  final ocr = MlKitOcr();
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
