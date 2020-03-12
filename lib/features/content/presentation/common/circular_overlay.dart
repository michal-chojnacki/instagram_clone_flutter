import 'package:flutter/material.dart';

class CircularOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.black12, BlendMode.srcOut),
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            )),
      ),
    );
  }
}
