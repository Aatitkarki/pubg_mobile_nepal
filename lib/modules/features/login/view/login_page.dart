import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/modules/features/home_screen/view/home_screen_page.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: lXPadding,
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              elHeightSpan,
              lHeightSpan,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: kPrimaryColor,
                    onPressed: () => Get.back(),
                  ),
                  Text(
                    "LOGIN",
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.2,
              ),
              Text("EMAIL ADDRESS",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        fontSize: 20,
                      )),
              TextField(),
              Text("PASSWORD",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        fontSize: 20,
                      )),
              TextField(),
              lHeightSpan,
              InkWell(
                onTap: () => Get.to(HomeScreen()),
                child: Container(
                  width: Get.width,
                  padding: mYPadding,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(color: kBackgroundColor),
                    ),
                  ),
                ),
              ),
              sHeightSpan,
              Container(
                width: double.infinity,
                child: Text(
                  "FORGET PASSWORD?",
                  textAlign: TextAlign.end,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(color: kPrimaryColor, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
