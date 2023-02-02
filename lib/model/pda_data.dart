class PdaData {
  dynamic data;
  dynamic infData01;
  dynamic infData02;
  dynamic infData03;
  dynamic infData04;
  dynamic reval;
  dynamic etc;
  String? errCode;
  String? errMessage;

  PdaData(
      {this.data,
      this.infData01,
      this.infData02,
      this.infData03,
      this.infData04,
      this.reval,
      this.etc,
      this.errCode,
      this.errMessage});

  PdaData.fromJson(Map<String, dynamic> json) {
    data = json['Data'];
    infData01 = json['InfData01'];
    infData02 = json['InfData02'];
    infData03 = json['InfData03'];
    infData04 = json['InfData04'];
    reval = json['Reval'];
    etc = json['Etc'];
    errCode = json['ErrCode'];
    errMessage = json['ErrMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['Data'] = this.data!.toJson();
    }
    data['InfData01'] = infData01;
    data['InfData02'] = infData02;
    data['InfData03'] = infData03;
    data['InfData04'] = infData04;
    data['Reval'] = reval;
    data['Etc'] = etc;
    data['ErrCode'] = errCode;
    data['ErrMessage'] = errMessage;
    return data;
  }
}
