import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/modules/features/dashboard/view/dashboard_page.dart';
import 'package:pubg_mobile_nepal/modules/features/home_screen/widget/home_menu_widget.dart';
import 'package:pubg_mobile_nepal/modules/features/match_highlights/view/match_highlight_page.dart';
import 'package:pubg_mobile_nepal/modules/features/upcoming_match/view/upcoming_match_page.dart';
import 'package:pubg_mobile_nepal/modules/features/user_details/view/user_details_screen.dart';
import 'package:pubg_mobile_nepal/modules/features/welcome/view/welcome_page.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    print("this is height $height");
    print("this is width $width");
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Container(
              height: height * 0.18,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "WELCOME TO PUBG MOBILE NEPAL",
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          fontSize: 20.0,
                          color: kPrimaryTextColor,
                        ),
                  ),
                  Text(
                    "Himanshu Marasani",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(fontSize: 18.0),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 7.0,
              color: kSecondaryBackgroundColor,
            ),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Container(
                    child: Column(
                      children: [
                        Wrap(
                          spacing: Get.width * 0.09,
                          runSpacing: Get.height * 0.06,
                          children: [
                            HomeMenu(
                              onPressed: () {
                                Get.to(DashboardPage());
                              },
                              title: "Dashboard",
                              imgUrl: "assets/icons/dashboard.svg",
                            ),
                            HomeMenu(
                              onPressed: () {
                                Get.to(UpcomingMatchPage());
                              },
                              title: "Upcoming Matches",
                              imgUrl: "assets/icons/dashboard.svg",
                            ),
                            HomeMenu(
                              title: "Free Giveaway Matches",
                              imgUrl: "assets/icons/dashboard.svg",
                            ),
                            HomeMenu(
                              title: "Upcoming Tournaments",
                              imgUrl: "assets/icons/dashboard.svg",
                            ),
                            HomeMenu(
                              onPressed: () => Get.to(MatchHighlightPage()),
                              title: "Match Highlights",
                              imgUrl: "assets/icons/multimedia-player.svg",
                            ),
                            HomeMenu(
                              title: "Recent Winners",
                              imgUrl: "assets/icons/trophy.svg",
                            ),
                            HomeMenu(
                              title: "PUBGM Nepal Center",
                              imgUrl: "assets/icons/cart.svg",
                            ),
                            HomeMenu(
                              title: "Redeem Center",
                              imgUrl: "assets/icons/reward icon.svg",
                            ),
                            HomeMenu(
                              title: "Contact Us",
                              imgUrl: "assets/icons/Contact Icon.svg",
                            ),
                            HomeMenu(
                              onPressed: () => Get.to(UserDetailsPage()),
                              title: "Settings",
                              imgUrl: "assets/icons/setting Icon.svg",
                            ),
                          ],
                        ),
                        lHeightSpan,
                        ButtonTheme(
                          minWidth: width * 0.9,
                          padding: mYPadding,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: RaisedButton(
                            color: kSecondaryButtonColor,
                            onPressed: () => Get.offAll(WelcomePage()),
                            child: Text(
                              "Log out",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(
                                    color: kBackgroundColor,
                                    fontSize: 20.0,
                                  ),
                            ),
                          ),
                        ),
                        mHeightSpan,
                        Container(
                          height: width * 0.15,
                          color: kSecondaryBackgroundColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // FractionallySizedBox(
            //   heightFactor: ,
            // )
          ],
        ),
      ),
    );
  }
}

// Flexible(
//   child: FractionallySizedBox(
//       heightFactor: 40,
//       widthFactor: width,
//       child: Container(
//         color: Colors.green,
//       )
//       //             Container(
//       //   width: Get.width,
//       //   color: kBackgroundColor,
//       //   padding: EdgeInsets.only(top: 20, bottom: 10),
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: [
//       //       Text(
//       //         "WELCOME TO PUBG MOBILE NEPAL",
//       //         style: Theme.of(context)
//       //             .textTheme
//       //             .bodyText2
//       //             .copyWith(color: kPrimaryTextColor),
//       //       ),
//       //       Text("Himanshu Marasini")
//       //     ],
//       //   ),
//       // ),
//       ),
// ),
