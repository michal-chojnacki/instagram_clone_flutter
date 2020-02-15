import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class TakePictureWidget extends StatefulWidget {
  final CameraDescription camera;
  final Function onPictureTaken;
  final Stream<dynamic> takePictureSource;

  TakePictureWidget(
      {Key key,
      @required this.camera,
      @required this.takePictureSource,
      @required this.onPictureTaken})
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
      takePicture();
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
          return CameraPreview(_controller);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  void takePicture() async {
    try {
      await _initializeControllerFuture;
      final path = join(
        (await getTemporaryDirectory()).path,
        '${DateTime.now()}.png',
      );
      await _controller.takePicture(path);
      widget.onPictureTaken(path);
    } catch (e) {
      print(e);
    }
  }
}
