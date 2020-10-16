import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/modules/features/dashboard/view/dashboard_page.dart';
import 'package:pubg_mobile_nepal/modules/features/login/view/login_page.dart';
import 'package:pubg_mobile_nepal/modules/features/register_page/view/register_page.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: lPadding,
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            elHeightSpan,
            lHeightSpan,
            Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                "assets/images/logo.png",
              ))),
            ),
            lHeightSpan,
            Text(
              "Welcome to PUBG MOBILE NEPAL",
              style: Theme.of(context).textTheme.headline5,
            ),
            mHeightSpan,
            sHeightSpan,
            InkWell(
                //TODO: Add splash to the inkwell
                onTap: () => Get.to(RegisterPage()),
                child: Container(
                  width: Get.width,
                  padding: mYPadding,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                      child: Text(
                    "Create Account",
                    style: Theme.of(context).textTheme.caption,
                  )),
                )),
            mHeightSpan,
            InkWell(
              //TODO: Add spalsh to the inkwell
              onTap: () => Get.to(LoginPage()),
              child: Container(
                width: Get.width,
                padding: mYPadding,
                decoration: BoxDecoration(
                    color: kLightYellowColor,
                    borderRadius: BorderRadius.circular(4)),
                child: Center(
                  child: Text(
                    "Login",
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(color: kPrimaryTextColor),
                  ),
                ),
              ),
            ),
            mHeightSpan,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "PUBG NEPAL STORE",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text("REDEEM ITEMS",
                    style: Theme.of(context).textTheme.subtitle2),
              ],
            )
          ],
        ),
      ),
    );
  }
}
