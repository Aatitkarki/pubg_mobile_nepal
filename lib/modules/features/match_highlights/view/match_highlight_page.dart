import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/modules/features/match_highlights/view/match_highlight_model.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class MatchHighlightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            elHeightSpan,
            lHeightSpan,
            pageTitle(context),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  MatchHighlightModel(
                    title: "MATCHES OF: 19-08-2020",
                    imgUrl: "assets/images/match_highlight1.png",
                    data: "7:00 PM (SQUAD) EMULATOR",
                  ),
                  MatchHighlightModel(
                    title: "MATCHES OF: 17-08-2020",
                    imgUrl: "assets/images/match_highlight2.png",
                    data: "9:00 PM (SQUAD) MOBILE",
                  ),
                ],
              ),
            ),
          ],
        ),
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
          "MATCH HIGHLIGHTS",
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
