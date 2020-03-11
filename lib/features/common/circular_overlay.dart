import 'package:flutter/material.dart';

class CircularOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.black12, BlendMode.srcOut),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  backgroundBlendMode: BlendMode.dstOut),
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                )),
          ],
        ),
      ),
    );
  }
}
