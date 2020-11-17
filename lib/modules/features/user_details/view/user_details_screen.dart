import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class UserDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            //padding: lXPadding,
            width: size.width,
            height: size.height,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              elHeightSpan,
              lHeightSpan,
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: kPrimaryColor,
                    ),
                    onPressed: () => Get.back(),
                  ),
                  Text(
                    "USER DETAILS",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              Divider(
                thickness: 7.0,
                color: Colors.grey[100],
              ),
              Container(
                padding: mPagePadding,
                child: Column(
                  children: [
                    buildUserData("NAME:", "Himanshu Marasini"),
                    buildUserData("EMAIL ID:", "himanshu@gmail.com"),
                    buildUserData("PHONE NUMBER:", "8963534"),
                    buildUserData("KHALTI ID:", "8965248"),
                    buildUserData("REDEEM POINTS:", "50"),
                  ],
                ),
              )
            ])));
  }

  Widget buildUserData(String type, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text("$type"), Text("$value")],
    );
  }
}
