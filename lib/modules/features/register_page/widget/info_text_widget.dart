import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String infoText;
  InfoText({this.infoText});

  @override
  Widget build(BuildContext context) {
    return Text(
      infoText,
      style: Theme.of(context).textTheme.headline5.copyWith(fontSize: 20),
    );
  }
}
