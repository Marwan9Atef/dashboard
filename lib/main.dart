
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/dash_board_view.dart';

void main(){
  runApp(DevicePreview(builder:(context) =>  ResponsiveDashBoard(),enabled: true,));

}
class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      locale: DevicePreview.locale(context),
       builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
