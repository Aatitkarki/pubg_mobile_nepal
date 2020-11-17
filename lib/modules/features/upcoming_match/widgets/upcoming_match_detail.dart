import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class UpcomingMatchDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Column(
        children: [
          lHeightSpan,
          Text("MATCH WILL START AT:"),
          Text(
            "10:00 PM",
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(fontSize: 18.0, color: Colors.black),
          ),
          lHeightSpan,
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
              ],
            ),
          ),
          lHeightSpan,
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
            child: Material(
              color: kSecondayColor,
              borderRadius: BorderRadius.circular(14),
              child: InkWell(
                splashColor: Colors.yellow,
                child: Padding(
                  padding: esYXPadding,
                  child: Text(
                    "Register Now",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(color: kBackgroundColor),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildMatchRow(BuildContext context, String type, String data) {
    return Row(
      children: [
        Text(
          "$type",
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
}
