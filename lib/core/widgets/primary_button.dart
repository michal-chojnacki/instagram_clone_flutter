import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final bool light;
  final String text;
  final Function onPressed;

  PrimaryButton({@required this.text, this.light = false, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return FlatButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
          side: BorderSide(color: primaryColor)),
      color: light ? Colors.white : primaryColor,
      child: Text(
        text,
        style: light
            ? TextStyle(color: primaryColor)
            : TextStyle(color: Colors.white),
      ),
      onPressed: () => onPressed?.call(),
    );
  }
}
