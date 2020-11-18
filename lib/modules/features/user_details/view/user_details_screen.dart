import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/modules/features/home_screen/view/home_screen_page.dart';
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
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Table(
                        children: [
                          buildUserData("NAME:", "Himanshu Marasini"),
                          buildUserData("EMAIL ID:", "himanshu@gmail.com"),
                          buildUserData("PHONE NUMBER:", "9808965248"),
                          buildUserData("KHALTI ID:", "8963534"),
                          buildUserData("REDEEM POINTS:", "50"),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2.0,
                      color: Colors.grey[100],
                    ),
                    sHeightSpan,
                    Text(
                      "CHANGE PASSWORD",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Container(
                      padding: sPagePadding,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("OLD PASSWORD",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(
                                    fontSize: 20,
                                  )),
                          esHeightSpan,
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            )),
                          ),
                          sHeightSpan,
                          Text("NEW PASSWORD",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(
                                    fontSize: 20,
                                  )),
                          esHeightSpan,
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            )),
                          ),
                          sHeightSpan,
                          Text("CONFIRM PASSWORD",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(
                                    fontSize: 20,
                                  )),
                          esHeightSpan,
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            )),
                          ),
                          lHeightSpan,
                          ButtonTheme(
                            minWidth: size.width,
                            padding: mYPadding,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: RaisedButton(
                              color: kThirdButtonColor,
                              onPressed: () => Get.to(HomeScreen()),
                              child: Text(
                                "Update Password",
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .copyWith(color: kBackgroundColor),
                              ),
                            ),
                          ),
                          lHeightSpan,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow buildUserData(String type, String value) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text("$type"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text("$value"),
        )
      ],
    );
  }
}
