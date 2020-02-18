import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/camera/take_picture_widget.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';
import 'package:super_enum/super_enum.dart';

class AddContentWidget extends StatefulWidget {
  @override
  _AddContentWidgetState createState() => _AddContentWidgetState();
}

class _AddContentWidgetState extends State<AddContentWidget> {
  final _navigationBloc = GetIt.I<NavigationBloc>();
  final _changeNotifier = new StreamController.broadcast();

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
              body: TakePictureWidget(
                  camera: snapshot.data,
                  takePictureSource: _changeNotifier.stream,
                  onPictureTaken: (imagePath) {
                      _navigationBloc.openSendContentScreen(imagePath);
                  }),
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
}
