import 'package:flustars_flutter3/flustars_flutter3.dart';

import 'http_client.dart';
import 'http_config.dart';

httpService() {
  // var headers = {'token': SpUtil.getString("token", defValue: "mock")};
  HttpConfig dioConfig = HttpConfig(baseUrl: "https://api.doctorxiong.club/");
  return HttpClient(dioConfig: dioConfig);
}
