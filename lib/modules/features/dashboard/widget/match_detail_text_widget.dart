import 'package:flutter/material.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class MatchDetailText extends StatelessWidget {
  final String title;
  final String data;

  MatchDetailText({
    @required this.title,
    @required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: title,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: Colors.white, fontSize: 14.0),
          children: <TextSpan>[
            TextSpan(
                text: data,
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: kPrimaryColor,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w300))
          ]),
    );
  }
}
