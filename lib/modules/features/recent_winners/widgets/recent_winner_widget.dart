import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class RecentWinnerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: Get.width,
        child: Column(children: [
          Container(
            width: size.width,
            color: kPrimaryTextColor,
            padding: sPadding,
            child: Text(
              "MATCHES OF: 19-08-2020",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(fontSize: 18.0, color: Colors.white),
            ),
          ),
          lHeightSpan,
          Text("MATCH WILL START AT:"),
          Text(
            "GAME OVER",
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(fontSize: 18.0, color: Colors.black),
          ),
          sHeightSpan,
          Container(
            padding: sXPagePadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildMatchRow(context, "Match Type:", "(SQUAD) EMULATOR,"),
                    buildMatchRow(context, "Match Map:", "ERANGLE")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildMatchRow(context, "Entry Fee:", "NRS 50/Per Player"),
                    buildMatchRow(context, "Winning Prize:", "NRS 3500")
                  ],
                ),
                Divider(
                  color: kSecondayColor,
                  height: 2,
                )
              ],
            ),
          ),
          esHeightSpan,
          Text(
            "WINNING TEAM:",
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: kPrimaryTextColor),
          ),
          Text("4 angry Gorkhali".toUpperCase()),
          Container(
            padding: lPagePadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildUserNameID(context, "4ag spider", "89794646564"),
                buildUserNameID(context, "4ag snake", "64564564564"),
                buildUserNameID(context, "4ag tiger", "45664545656"),
                buildUserNameID(context, "4ag elephant", "89794646564"),
              ],
            ),
          ),
          lHeightSpan
        ]));
  }

  Widget buildMatchRow(BuildContext context, String type, String data) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "$type".toUpperCase(),
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: kPrimaryTextColor),
        ),
        Text("$data",
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: kPrimaryTextColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w300))
      ],
    );
  }

  Widget buildUserNameID(BuildContext context, String name, String id) {
    return Padding(
      padding: esYPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$name",
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: kPrimaryTextColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w300),
          ),
          Text("$id",
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: kPrimaryTextColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300))
        ],
      ),
    );
  }
}
