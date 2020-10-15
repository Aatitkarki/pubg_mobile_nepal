//
//
//
//
//
//----------------  THESE ALL ARE LIST OF DUMMY DATA  ----------------------
//
//
//
//
//
//

import 'package:pubg_mobile_nepal/data_source/match_details/models/match_details_model.dart';

List _matchModelList = <MatchDetailsModel>[
  MatchDetailsModel(
    "28-07-2020",
    "MOBILE",
    "ERANGLE",
    "10:00 AM",
    "SQUAD",
    "Rana's",
    "TPP",
    20,
  ),
  MatchDetailsModel(
    "30-07-2020",
    "EMULATOR",
    "SANHOK",
    "10:00 AM",
    "DUO",
    "4 Angry",
    "FPP",
    9,
  ),
  MatchDetailsModel(
    "28-07-2020",
    "EMULATOR",
    "SANHOK",
    "09:00 AM",
    "SQUAD",
    "4 Happy",
    "FPP",
    9,
  ),
];

List _imageUrl = <String>[
  "assets/images/Mobile_Image-1.png",
  "assets/images/Mobile_Image-2.png",
  "assets/images/Mobile_Image-3.png",
];

List get matchModelList => _matchModelList;
List get imageUrl => _imageUrl;
