class CommCode {
  String? commCD;
  String? commNM;
  String? sysLinkCD;
  int? sysLinkID;
  int? ord;

  CommCode(
      {this.commCD, this.commNM, this.sysLinkCD, this.sysLinkID, this.ord});

  CommCode.fromJson(Map<String, dynamic> json) {
    commCD = json['CommCD'];
    commNM = json['CommNM'];
    sysLinkCD = json['SysLinkCD'];
    sysLinkID = json['SysLinkID'];
    ord = json['Ord'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['CommCD'] = commCD;
    data['CommNM'] = commNM;
    data['SysLinkCD'] = sysLinkCD;
    data['SysLinkID'] = sysLinkID;
    data['Ord'] = ord;
    return data;
  }
}
