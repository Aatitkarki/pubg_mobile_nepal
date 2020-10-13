import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: Get.width,
              color: kBackgroundColor,
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "WELCOME TO PUBG MOBILE NEPAL",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(color: kPrimaryTextColor),
                  ),
                  Text("Himanshu Marasini")
                ],
              ),
            ),
            sHeightSpan,
            SingleChildScrollView(
              child: Container(
                color: kBackgroundColor,
                child: Column(
                  children: [
                    Row(
                      children: [menuWithIcon(context), menuWithIcon(context)],
                    ),
                    Row(
                      children: [menuWithIcon(context), menuWithIcon(context)],
                    ),
                    Row(
                      children: [menuWithIcon(context), menuWithIcon(context)],
                    ),
                    Row(
                      children: [menuWithIcon(context), menuWithIcon(context)],
                    ),
                    Row(
                      children: [menuWithIcon(context), menuWithIcon(context)],
                    ),
                  ],
                ),
              ),
            )
            // FractionallySizedBox(
            //   heightFactor: ,
            // )
          ],
        ),
      ),
    );
  }

  Widget menuWithIcon(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kLightYellowColor),
      child: Center(
          child: Column(
        children: [Icon(Icons.ac_unit), Text("Dashboard")],
      )),
    );
  }
}
