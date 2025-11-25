import 'package:flutter/material.dart';
import 'desktop_body.dart';
import 'income_section.dart';
import 'my_card_and_my_tranaction.dart';
class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

   @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
              DesktopBody(),
              SizedBox(height: 24,),
              MyCardAndMyTranaction(),
              SizedBox(height: 24,),
              IncomeSection(),
      
        ],
      ),
    );
  }
}