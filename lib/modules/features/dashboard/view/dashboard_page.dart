import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/modules/features/dashboard/widget/upcoming_match_details_widget.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

import 'dummy_data.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        //padding: lXPadding,
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  "DASHBOARD",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),

            Divider(
              thickness: 7.0,
              color: Colors.grey[100],
            ),
            Padding(
              padding: lXPadding,
              child: Text(
                "PLAYER STATISTICS",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(color: Colors.black),
              ),
            ),
            Divider(
              thickness: 3.0,
              color: Colors.grey[100],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "20",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                    Text("Match Played"),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "9",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                    Text("Match Won"),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Bronze",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                    Text("Current League"),
                  ],
                ),
              ],
            ),
            sHeightSpan,
            Container(
              width: size.width,
              color: kPrimaryTextColor,
              padding: sPadding,
              child: Text(
                "UPCOMING REGISTERED MATCHES",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(fontSize: 18.0, color: Colors.white),
              ),
            ),
            // eesHeightSpan,
            // UpcomingMatchDetails(
            //   size: size,
            //   matchDetailsModel: _matchModelList[0],
            // ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: matchModelList.length,
                itemBuilder: (context, index) {
                  return UpcomingMatchDetails(
                    size: size,
                    imageUrl: imageUrl[index],
                    matchDetailsModel: matchModelList[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
