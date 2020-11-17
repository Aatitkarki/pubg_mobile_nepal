import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class HomeMenu extends StatelessWidget {
  final String title;
  final String imgUrl;
  final Function onPressed;

  HomeMenu({
    this.title,
    this.imgUrl,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.4,
      height: Get.height * 0.15,
      decoration: BoxDecoration(
        color: kLightYellowColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Material(
        child: InkWell(
          onTap: () {
            onPressed();
          },
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                imgUrl,
                height: 30.0,
              ),
              eesHeightSpan,
              esHeightSpan,
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: kPrimaryTextColor,
                      fontSize: 16.0,
                    ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
