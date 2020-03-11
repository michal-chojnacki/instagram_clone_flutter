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
      appBar: AppBar(
        leading: BackButton(),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: _imageAccepted,
          )
        ],
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(4.0),
        child: (widget.editable)
            ? Crop.file(
                widget.image,
                key: cropKey,
                aspectRatio: widget.ratio,
              )
            : FittedBox(
                child: Image.file(
                  widget.image,
                ),
                fit: BoxFit.fitWidth),
      ),
    );
  }

  void _imageAccepted() async {
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
