import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_crop/image_crop.dart';

class AdjustImagePage extends StatefulWidget {
  final File image;
  final Function onImagePicked;

  AdjustImagePage({@required this.image, @required this.onImagePicked});

  @override
  _AdjustImagePageState createState() => _AdjustImagePageState();
}

class _AdjustImagePageState extends State<AdjustImagePage> {
  final cropKey = GlobalKey<CropState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.black,
          padding: const EdgeInsets.all(20.0),
          child: Crop.file(
            widget.image,
            key: cropKey,
            aspectRatio: 1.0,
          ),
        ),
        RaisedButton(child: Text("Crop"),onPressed: _cropImage,)
      ],
    );
  }

  void _cropImage() async {
    final croppedFile = await ImageCrop.cropImage(
      file: widget.image,
      area: cropKey.currentState.area,
    );
    widget.onImagePicked(croppedFile.path);
  }
}
