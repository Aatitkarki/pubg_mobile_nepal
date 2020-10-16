import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    print("this is height $height");
    print("this is width $width");
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: FractionallySizedBox(
                  heightFactor: 40,
                  widthFactor: width,
                  child: Container(
                    color: Colors.green,
                  )
                  //             Container(
                  //   width: Get.width,
                  //   color: kBackgroundColor,
                  //   padding: EdgeInsets.only(top: 20, bottom: 10),
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Text(
                  //         "WELCOME TO PUBG MOBILE NEPAL",
                  //         style: Theme.of(context)
                  //             .textTheme
                  //             .bodyText2
                  //             .copyWith(color: kPrimaryTextColor),
                  //       ),
                  //       Text("Himanshu Marasini")
                  //     ],
                  //   ),
                  // ),
                  ),
            ),
            Container(
              height: 8,
              width: double.infinity,
              color: kSecondaryBackgroundColor,
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
      width: Get.width * 0.4,
      decoration: BoxDecoration(color: kLightYellowColor),
      child: Center(
          child: Column(
        children: [Icon(Icons.ac_unit), Text("Dashboard")],
      )),
    );
  }
}
