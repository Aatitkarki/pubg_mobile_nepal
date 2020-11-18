import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class MatchHighlightModel extends StatelessWidget {
  final String title;
  final String imgUrl;
  final String data;

  MatchHighlightModel({
    this.title,
    this.imgUrl,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width,
          color: kPrimaryTextColor,
          padding: sPadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(fontSize: 18.0, color: Colors.white),
          ),
        ),
        Container(
          padding: mYPadding,
          child: Column(
            children: [
              Image.asset(
                imgUrl,
                height: size.height * 0.24,
              ),
              sHeightSpan,
              Text(
                data,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(fontSize: Get.width * 0.06, color: kPrimaryColor),
              ),
              sHeightSpan,
              Icon(
                FontAwesomeIcons.ellipsisH,
              ),
              sHeightSpan,
            ],
          ),
        )
      ],
    );
  }
}
