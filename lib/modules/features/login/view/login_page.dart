import 'package:flutter/material.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
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
                Icon(
                  Icons.arrow_back,
                  color: kPrimaryColor,
                ),
                Text(
                  "Login",
                  style: Theme.of(context).textTheme.headline5,
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.2,
            ),
            Text(
              "Email address",
              style: Theme.of(context).textTheme.headline5,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: sPadding,
                  border: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kSecondaryIconColor))),
            ),
            Text(
              "Password",
              style: Theme.of(context).textTheme.headline5,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: sPadding,
                  border: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kSecondaryIconColor))),
            ),
            mHeightSpan,
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(4)),
              child: Center(
                child: Text(
                  "Login",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.black),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                "FORGET PASSWORD?",
                textAlign: TextAlign.end,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(color: kSecondaryIconColor),
              ),
            ),
            Text("This is data",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Color(0xff373737))),
            Text(
              "this is the pubg mobile nepal application",
              style: TextStyle(
                  fontFamily: 'helveticaneue', fontWeight: FontWeight.normal),
            ),
            Text(
              "this is the pubg mobile nepal application",
              style: TextStyle(
                  fontFamily: 'helveticaneue',
                  fontWeight: FontWeight.normal,
                  color: Color(0xff212121)),
            ),
            Text(
              "this is the pubg mobile nepal application",
              style: TextStyle(
                  fontFamily: 'helveticaneue',
                  fontWeight: FontWeight.normal,
                  color: Color(0xff373737)),
            ),
          ],
        ),
      ),
    );
  }
}
