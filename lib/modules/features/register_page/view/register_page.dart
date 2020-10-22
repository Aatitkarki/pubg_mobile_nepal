import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/modules/features/dashboard/view/dashboard_page.dart';
import 'package:pubg_mobile_nepal/modules/features/register_page/widget/info_text_widget.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.09,
              ),
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
                    "CREATE ACCCOUNT",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              Container(
                padding: lXPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.1),
                    InfoText(
                      infoText: "NAME",
                    ),
                    TextField(),
                    InfoText(
                      infoText: "EMAIL ADDRESS",
                    ),
                    TextField(),
                    InfoText(
                      infoText: "PHONE NUMBER",
                    ),
                    TextField(),
                    InfoText(
                      infoText: "PHONE NUMBER",
                    ),
                    TextField(),
                    InfoText(
                      infoText: "KHALTI ID",
                    ),
                    TextField(),
                    InfoText(
                      infoText: "PASSWORD",
                    ),
                    TextField(),
                    InfoText(
                      infoText: "CONFIRM PASSWORD",
                    ),
                    TextField(),
                    lHeightSpan,
                    ButtonTheme(
                      minWidth: size.width,
                      padding: mYPadding,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: RaisedButton(
                        color: kPrimaryColor,
                        onPressed: () => Get.to(DashboardPage()),
                        child: Text(
                          "CREATE ACCOUNT",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: kBackgroundColor),
                        ),
                      ),
                    ),
                    elHeightSpan,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
