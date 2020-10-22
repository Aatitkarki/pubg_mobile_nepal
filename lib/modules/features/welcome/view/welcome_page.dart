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
    final height = Get.height;
    final width = Get.width;
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
            ButtonTheme(
              minWidth: width,
              padding: mYPadding,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: RaisedButton(
                color: kPrimaryColor,
                onPressed: () => Get.to(RegisterPage()),
                child: Text(
                  "Create Account",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: kBackgroundColor),
                ),
              ),
            ),
            mHeightSpan,
            ButtonTheme(
              minWidth: width,
              padding: mYPadding,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: RaisedButton(
                color: kPrimaryColor,
                onPressed: () => Get.to(LoginPage()),
                child: Text(
                  "Login",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: kBackgroundColor),
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
