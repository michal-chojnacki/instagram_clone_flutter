import 'package:flutter/material.dart';
import 'package:instagram_clone/core/widgets/primary_button.dart';

class ShowErrorWidget extends StatelessWidget {
  final String text;
  final Function onTryAgainPressed;

  ShowErrorWidget({this.text, this.onTryAgainPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text ?? 'Ups... something unexpected happened'),
          SizedBox(height: 8.0),
          if (onTryAgainPressed != null)
            PrimaryButton(text: 'Try again!', onPressed: onTryAgainPressed),
        ],
      ),
    );
  }
}
