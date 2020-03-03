import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/features/camera/take_picture_widget.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';
import 'package:super_enum/super_enum.dart';

class PickImagePage extends StatefulWidget {
  final Function onImagePicked;

  PickImagePage({@required this.onImagePicked});

  @override
  _PickImagePageState createState() => _PickImagePageState();
}

class _PickImagePageState extends State<PickImagePage> {
  final _changeNotifier = new StreamController.broadcast();
  final _navigationBloc = GetIt.I<NavigationBloc>();

  @override
  void dispose() {
    _changeNotifier.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CameraDescription>(
        future: _chooseCamera(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              body: Stack(
                children: <Widget>[
                  TakePictureWidget(
                      camera: snapshot.data,
                      takePictureSource: _changeNotifier.stream,
                      onPictureTaken: (imagePath) {
                        widget.onImagePicked(imagePath);
                      }),
                  Positioned.fill(
                      top: 16.0,
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            onPressed: () => _navigationBloc.pop(),
                          ))),
                  Positioned.fill(
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: MaterialButton(
                            child: Text(
                              'Gallery',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: _pickImageFromGallery,
                          ))),
                ],
              ),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.camera_alt),
                onPressed: () => _changeNotifier.sink.add(null),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }

  Future<CameraDescription> _chooseCamera() async {
    final cameras = await availableCameras();
    return cameras.first;
  }

  Future<void> _pickImageFromGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    widget.onImagePicked(image.path);
  }
}
