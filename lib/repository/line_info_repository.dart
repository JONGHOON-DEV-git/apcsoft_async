import 'package:dio/dio.dart';

import '../model/comm_code_page.dart';
import '../model/commcode.dart';
import '../model/pda_data.dart';

class LineInformationRepository {
  Future<List<CommCode>> getLine() async {
    String line = "PDA/GetCboCommCodePage";
    var commParam = GetCboCommCodePage(
        parCommCD: 'LINETYP000', sysLinkCDs: '', sysLinkIDs: null, lngCD: 'KO');

    Dio dio = Dio();
    var res = await dio.post('http://192.168.100.115/' + line,
        data: commParam.toJson());

    var pdaData = PdaData.fromJson(res.data);
    if (pdaData.errCode == "01") {
      throw Exception(pdaData.errMessage);
    }
    return List<CommCode>.from(pdaData.data.map((x) => CommCode.fromJson(x)));
  }
}
