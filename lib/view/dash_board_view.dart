import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/widget/dash_board_desktop_layout.dart';
import '../widget/adaptive_layout_widget.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.offWhite,
body: AdaptiveLayoutWidget(
  mobileLayout: (context) =>const SizedBox() ,
  tabletLayout: (context) => const SizedBox(),
  desktopLayout: (context) => DashBoardDesktopLayout() ,
),

    );
  }
}
