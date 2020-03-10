import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_crop/image_crop.dart';

class AdjustImagePage extends StatefulWidget {
  final double ratio;
  final File image;
  final Function onImagePicked;
  final bool editable;

  AdjustImagePage(
      {@required this.image,
      @required this.ratio,
      @required this.onImagePicked,
      @required this.editable});

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
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(20.0),
            child: (widget.editable)
                ? Crop.file(
                    widget.image,
                    key: cropKey,
                    aspectRatio: widget.ratio,
                  )
                : Center(child: Image.file(widget.image)),
          ),
          RaisedButton(
            child: Text("Crop"),
            onPressed: _cropImage,
          )
        ],
      ),
    );
  }

  void _cropImage() async {
    if (!widget.editable) {
      widget.onImagePicked(widget.image.path);
      return;
    }
    final croppedFile = await ImageCrop.cropImage(
      file: widget.image,
      area: cropKey.currentState.area,
    );
    widget.onImagePicked(croppedFile.path);
  }
}
