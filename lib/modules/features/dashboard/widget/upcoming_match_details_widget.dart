import 'package:flutter/material.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/data_source/match_details/models/match_details_model.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

import 'match_detail_text_widget.dart';

class UpcomingMatchDetails extends StatelessWidget {
  UpcomingMatchDetails({
    @required this.size,
    @required this.imageUrl,
    @required this.matchDetailsModel,
  });

  final Size size;
  final String imageUrl;
  final MatchDetailsModel matchDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: kPrimaryTextColor,
          height: size.height * 0.26,
          width: size.width,
        ),
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            imageUrl,
            height: size.height * 0.26,
          ),
        ),
        // TODO: For stack details
        Container(
          padding: lPadding,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MatchDetailText(
                    title: "Match Date: ",
                    //data: "28-07-2020",
                    data: matchDetailsModel.date,
                  ),
                  esHeightSpan,
                  MatchDetailText(
                    title: "Device Type: ",
                    //data: "MOBILE",
                    data: matchDetailsModel.deviceType,
                  ),
                  esHeightSpan,
                  MatchDetailText(
                    title: "Match Map: ",
                    //data: "ERANGEL",
                    data: matchDetailsModel.matchMap,
                  ),
                  lHeightSpan,
                  RaisedButton(
                    padding: lXPadding,
                    onPressed: () {},
                    child: Text(
                      "Join Discord",
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                    ),
                  ),
                  // Text(
                  //   "Join our Discord Channel for latest updates*",
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .bodyText1
                  //       .copyWith(
                  //           color: Colors.grey[200],
                  //           fontSize: 10.0,
                  //           fontWeight: FontWeight.w200),
                  // )
                ],
              ),
              sWidthSpan,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MatchDetailText(
                    title: "Match Time: ",
                    //data: "10:00 am",
                    data: matchDetailsModel.matchTime,
                  ),
                  esHeightSpan,
                  MatchDetailText(
                    title: "Match Type: ",
                    //data: "SQUAD",
                    data: matchDetailsModel.matchType,
                  ),
                  esHeightSpan,
                  MatchDetailText(
                    title: "Team Name: ",
                    //data: "Rana's",
                    data: matchDetailsModel.teamName,
                  ),
                ],
              ),
              sWidthSpan,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MatchDetailText(
                    title: "Match Mode: ",
                    //data: "TPP",
                    data: matchDetailsModel.matchMode,
                  ),
                  esHeightSpan,
                  MatchDetailText(
                    title: "Total Team: ",
                    //data: "20",
                    data: matchDetailsModel.totalTeam.toString(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
