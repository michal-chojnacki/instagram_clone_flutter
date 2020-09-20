import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/features/camera/take_picture_widget.dart';
import 'package:instagram_clone/features/content/presentation/common/circular_overlay.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';
import 'package:super_enum/super_enum.dart';

class PickImagePage extends StatefulWidget {
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
  final _imagePicker = new ImagePicker();
  final _changeNotifier = new StreamController.broadcast();

  @override
  void dispose() {
    _changeNotifier.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.close),
          onPressed: () => GetIt.I<NavigationBloc>().pop(),
        ),
        title: const Text('Zdjęcie'),
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
                            widget.onImagePicked(imagePath, false);
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
                          onPressed: _pickImageFromGallery,
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

  Future<void> _pickImageFromGallery() async {
    var image = await _imagePicker.getImage(source: ImageSource.gallery);
    widget.onImagePicked(image.path, true);
  }
}
