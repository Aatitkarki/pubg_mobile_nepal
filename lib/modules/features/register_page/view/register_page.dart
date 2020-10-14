import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/modules/features/register_page/widget/info_text_widget.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: lXPadding,
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
                    "CREATE ACCCOUNT",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
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
                  onPressed: () {},
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
        ),
      ),
    );
  }
}
