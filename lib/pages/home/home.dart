import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toastr/flutter_toastr.dart';
import 'package:jungle/models/efficiency/stock_model.dart';
import 'package:jungle/pages/efficiency/efficiency.dart';
import 'package:jungle/services/http/http_response.dart';
import 'package:jungle/services/http/http_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  jump() {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return const Efficiency();
    }));
  }

  late StockModel info = const StockModel(code: '123');

  @override
  void initState() {
    super.initState();
    // printInfo();
    getDataTest();
  }

  printInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    WindowsDeviceInfo winInfo = await deviceInfo.windowsInfo;
    winInfo.data.forEach((key, value) => {debugPrint('$key : $value')});
  }

  getDataTest() async {
    HttpResponse appResponse = await httpService().get("/v1/fund?code=202015");
    if (appResponse.ok) {
      debugPrint("appResponse ok");
      debugPrint(appResponse.data.toString());
      setState(() {
        info = StockModel.fromJson(appResponse.data[0]);
      });
    } else {
      debugPrint("appResponse error");
      debugPrint(appResponse.error.toString());
      FlutterToastr.show(appResponse.error?.message ?? "请求错误", context,
          duration: FlutterToastr.lengthShort, position: FlutterToastr.bottom);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(onPressed: () => jump(), child: const Text('知行')),
        const SizedBox(
          height: 100,
        ),
        Column(
          children: [
            Text("code${info.code}"),
            Text("name${info.name}"),
            Text("netWorth${info.netWorth}"),
            Text("expectWorth${info.expectWorth}"),
            Text("totalWorth${info.totalWorth}"),
            Text("expectGrowth${info.expectGrowth}"),
            Text("dayGrowth${info.dayGrowth}"),
            Text("lastWeekGrowth${info.lastWeekGrowth}"),
            Text("lastMonthGrowth${info.lastMonthGrowth}"),
            Text("lastThreeMonthsGrowth${info.lastThreeMonthsGrowth}"),
          ],
        )
      ]),
    );
  }
}
