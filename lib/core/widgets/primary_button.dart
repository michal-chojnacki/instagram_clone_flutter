import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final bool light;
  final String text;
  final Function onPressed;

  PrimaryButton({@required this.text, this.light = false, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: light ? Colors.white : Colors.blue,
      child: Text(
        text,
        style: light
            ? TextStyle(color: Colors.blue)
            : TextStyle(color: Colors.white),
      ),
      onPressed: () => onPressed?.call(),
    );
  }
}
