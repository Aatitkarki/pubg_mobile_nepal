import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubg_mobile_nepal/common/ui/ui_helper.dart';
import 'package:pubg_mobile_nepal/modules/features/recent_winners/widgets/recent_winner_widget.dart';
import 'package:pubg_mobile_nepal/theme/colors.dart';

class RecentWinnersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            elHeightSpan,
            lHeightSpan,
            pageTitle(context),
            buildRecendWinnerList()
          ],
        ),
      ),
    );
  }

  Widget pageTitle(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
          onPressed: () => Get.back(),
        ),
        Text(
          "RECENT WINNERS",
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }

  Widget buildRecendWinnerList() {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return RecentWinnerWidget();
          }),
    );
  }
}
