import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          elHeightSpan,
          lHeightSpan,
          pageTitle(context),
          Divider(
            thickness: 8,
            color: kSecondaryBackgroundColor,
          ),
          lHeightSpan,
          Image(
            image: AssetImage("assets/images/logo.png"),
            height: 130,
          ),
          elHeightSpan,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "PUBG MOBILE NEPAL",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(fontSize: 35),
              ),
              buildIconWithData(
                  context,
                  Icon(Icons.location_on, color: Colors.pinkAccent),
                  "Butwal, Rupandehi"),
              buildIconWithData(
                  context,
                  Icon(
                    Icons.phone_android_outlined,
                    color: kPrimaryColor,
                  ),
                  "+977 9867256784"),
              buildIconWithData(
                  context,
                  Icon(
                    FontAwesomeIcons.globe,
                    size: 20,
                  ),
                  "pubgmobilenp.com"),
            ],
          )
        ],
      ),
    );
  }

  Widget pageTitle(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
          onPressed: () => Get.back(),
        ),
        Text(
          "CONTACT US",
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }

  Widget buildIconWithData(BuildContext context, Icon icon, String detail) {
    return Padding(
      padding: esYPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          sWidthSpan,
          Text("$detail",
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: kPrimaryTextColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300))
        ],
      ),
    );
  }
}
