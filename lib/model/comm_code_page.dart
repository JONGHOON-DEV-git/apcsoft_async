// CommCode 호출
class GetCboCommCodePage {
  String? parCommCD;
  String? sysLinkCDs;
  Null? sysLinkIDs;
  String? lngCD;

  GetCboCommCodePage(
      {this.parCommCD, this.sysLinkCDs, this.sysLinkIDs, this.lngCD});

  GetCboCommCodePage.fromJson(Map<String, dynamic> json) {
    parCommCD = json['parCommCD'];
    sysLinkCDs = json['sysLinkCDs'];
    sysLinkIDs = json['sysLinkIDs'];
    lngCD = json['lngCD'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['parCommCD'] = this.parCommCD;
    data['sysLinkCDs'] = this.sysLinkCDs;
    data['sysLinkIDs'] = this.sysLinkIDs;
    data['lngCD'] = this.lngCD;
    return data;
  }
}
