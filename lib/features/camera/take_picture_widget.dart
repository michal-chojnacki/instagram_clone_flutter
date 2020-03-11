import 'dart:io';

import 'package:built_value/built_value.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class TakePictureWidget extends StatefulWidget {
  final CameraDescription camera;
  final Function onPictureTaken;
  final double ratio;
  final Stream<dynamic> takePictureSource;

  TakePictureWidget(
      {Key key,
      @required this.camera,
      @required this.takePictureSource,
      @required this.onPictureTaken,
      this.ratio})
      : super(key: key);

  @override
  _TakePictureWidgetState createState() {
    return _TakePictureWidgetState();
  }
}

class _TakePictureWidgetState extends State<TakePictureWidget> {
  CameraController _controller;
  Future<void> _initializeControllerFuture;

  _TakePictureWidgetState();

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller.initialize();
    widget.takePictureSource.forEach((_) {
      takePicture(widget.ratio);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          var size = MediaQuery.of(context).size.width;
          return Container(
            width: (widget.ratio != null) ? size : null,
            height: (widget.ratio != null) ? size * widget.ratio : null,
            child: ClipRect(
              child: OverflowBox(
                alignment: Alignment.topCenter,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Container(
                    width: size,
                    height: size / _controller.value.aspectRatio,
                    child:
                        CameraPreview(_controller), // this is my CameraPreview
                  ),
                ),
              ),
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  void takePicture(@nullable double ratio) async {
    try {
      await _initializeControllerFuture;
      var path = join(
        (await getTemporaryDirectory()).path,
        '${DateTime.now()}.png',
      );
      await _controller.takePicture(path);
      if (ratio != null) {
        path = await _resizePhoto(path, ratio);
      }
      widget.onPictureTaken(path);
    } catch (e) {
      print(e);
    }
  }

  Future<String> _resizePhoto(String filePath, double ratio) async {
    ImageProperties properties =
        await FlutterNativeImage.getImageProperties(filePath);

    if (properties.orientation == ImageOrientation.rotate270 ||
        properties.orientation == ImageOrientation.rotate90) {
      ratio = 1 / ratio;
    }
    double targetWidth = properties.width.toDouble();
    double targetHeight = properties.width.toDouble() * ratio;
    var scale = properties.height / targetHeight;
    if (scale < 1) {
      targetWidth = targetWidth * scale;
      targetHeight = targetHeight * scale;
    }

    var offsetVertical = (properties.height - targetHeight) / 2;
    var offsetHorizontal = (properties.width - targetWidth) / 2;

    File croppedFile = await FlutterNativeImage.cropImage(
        filePath,
        offsetHorizontal.toInt(),
        offsetVertical.toInt(),
        targetWidth.toInt(),
        targetHeight.toInt());

    return croppedFile.path;
  }
}
