class MatchDetailsModel {
  final String date;
  final String deviceType;
  final String matchMap;
  final String matchTime;
  final String matchType;
  final String teamName;
  final String matchMode;
  final int totalTeam;

  MatchDetailsModel(
    this.date,
    this.deviceType,
    this.matchMap,
    this.matchTime,
    this.matchType,
    this.teamName,
    this.matchMode,
    this.totalTeam,
  );

  //TODO: create json parsing methods to fetch data
}
