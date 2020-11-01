import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/features/camera/page/adjust_image_page.dart';
import 'package:instagram_clone/features/camera/widget/take_picture_widget.dart';
import 'package:instagram_clone/features/content/presentation/common/circular_overlay.dart';

class PickImagePage extends StatefulWidget {
  static Route route({
    @required double ratio,
    @required bool circleShaped,
    @required Function onImagePicked,
  }) =>
      MaterialPageRoute<void>(
          builder: (_) => PickImagePage(
              ratio: ratio,
              circleShaped: circleShaped,
              onImagePicked:
                  (BuildContext context, String imagePath, bool editable) =>
                      Navigator.of(context).pushReplacement(
                        AdjustImagePage.route(
                            editable: editable,
                            ratio: ratio,
                            circleShaped: circleShaped,
                            image: File(imagePath),
                            onImagePicked: (String imagePath) =>
                                onImagePicked(imagePath)),
                      )));

  final double ratio;
  final bool circleShaped;
  final Function onImagePicked;

  PickImagePage({
    @required this.onImagePicked,
    @required this.ratio,
    @required this.circleShaped,
  });

  @override
  _PickImagePageState createState() => _PickImagePageState();
}

class _PickImagePageState extends State<PickImagePage> {
  final _imagePicker = ImagePicker();
  final _changeNotifier = StreamController.broadcast();

  @override
  void dispose() {
    _changeNotifier.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Photo'),
      ),
      body: FutureBuilder<CameraDescription>(
          future: _chooseCamera(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      child: TakePictureWidget(
                          camera: snapshot.data,
                          takePictureSource: _changeNotifier.stream,
                          ratio: widget.ratio,
                          onPictureTaken: (imagePath) {
                            widget.onImagePicked(context, imagePath, false);
                          }),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 48.0),
                        alignment: Alignment.bottomCenter,
                        child: FloatingActionButton(
                          child: Icon(Icons.camera_alt),
                          onPressed: () => _changeNotifier.sink.add(null),
                        )),
                    Container(
                        alignment: Alignment.bottomLeft,
                        child: MaterialButton(
                          child: Text('Gallery'),
                          onPressed: () => _pickImageFromGallery(context),
                        )),
                    if (widget.circleShaped)
                      Container(
                          width: double.infinity,
                          child: AspectRatio(
                              aspectRatio: 1.0, child: CircularOverlay()))
                  ],
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }

  Future<CameraDescription> _chooseCamera() async {
    final cameras = await availableCameras();
    return cameras.first;
  }

  Future<void> _pickImageFromGallery(BuildContext context) async {
    final image = await _imagePicker.getImage(source: ImageSource.gallery);
    widget.onImagePicked(context, image.path, true);
  }
}
