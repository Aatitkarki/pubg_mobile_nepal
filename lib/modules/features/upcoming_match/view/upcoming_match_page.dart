import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/modules/features/upcoming_match/widgets/upcoming_match_detail.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class UpcomingMatchPage extends StatelessWidget {
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
              pageTitle(context),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return buildUpcomingMatch(context);
                  },
                ),
              )
            ])));
  }

  Widget buildUpcomingMatch(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        UpcomingMatchDetail(),
        sHeightSpan,
        Icon(FontAwesomeIcons.solidCircle, size: 10),
        esHeightSpan
      ],
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
          "UPCOMING MATCHES",
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
