import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/widget/custom_drawer.dart';
import 'package:responsive_dash_board/widget/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/widget/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widget/dashboard_tablet_layout.dart';
import '../widget/adaptive_layout_widget.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width > 800 ? null : AppBar(
      leading: GestureDetector(onTap: (){
        _scaffoldKey.currentState!.openDrawer();
      },
      child: const Icon(Icons.menu)),
      backgroundColor: AppColor.offWhite,
      elevation: 0,
      ),
      drawer:MediaQuery.sizeOf(context).width > 800 ? null : SizedBox(width:MediaQuery.sizeOf(context).width * 0.7 ,child:  CustomDrawer()),
      backgroundColor: AppColor.offWhite,
body: AdaptiveLayoutWidget(
  mobileLayout: (context) =>const DashboardMobileLayout() ,
  tabletLayout: (context) => const DashboardTabletLayout(),
  desktopLayout: (context) =>const DashBoardDesktopLayout() ,
),

    );
  }
}
