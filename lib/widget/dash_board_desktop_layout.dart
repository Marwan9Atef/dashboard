import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/all_expenses.dart';
import 'package:responsive_dash_board/widget/quick_invoice.dart';

import 'custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 3,child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              AllExpenses(),
              SizedBox(height:24 ,),
              QuickInvoice(),
            ],
          ),
        ))



      ],

    );
  }
}
