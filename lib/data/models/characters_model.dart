class Character{

late int charId;
late String name;
late String brithday;
late List<dynamic> jops;
late String images;
late String statesForDeadOrLive;
late String nickName;
late List<dynamic> appearanceForBreakingBad;
late String actorName;
late String seriesName;
late List<dynamic>appearanceForBetterCallSaul;


Character.fromJson(Map<String , dynamic> json)
{
  charId = json["char_id"];
  name = json["name"];
  brithday = json["birthday"];
  jops = json["occupation"];
  images = json["img"];
  statesForDeadOrLive = json["status"];
  nickName = json["nickname"];
  appearanceForBreakingBad = json["appearance"];
  actorName = json["portrayed"];
  seriesName = json["category"];
  appearanceForBetterCallSaul = json["better_call_saul_appearance"];
}
}

