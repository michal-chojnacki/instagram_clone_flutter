import 'package:flutter/material.dart';

class RoundedSquareImage extends StatelessWidget {
  final Image image;

  RoundedSquareImage({@required this.image});

  RoundedSquareImage.network(String src)
      : this(
            image: (src != null && src.isNotEmpty)
                ? (Image.network(
                    src,
                    fit: BoxFit.cover,
                  ))
                : Image(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.cover,
                  ));

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: AspectRatio(
          aspectRatio: 1.0,
          child: image,
        ));
  }
}
