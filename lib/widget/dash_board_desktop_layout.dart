import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/income_section.dart';
import 'package:responsive_dash_board/widget/my_card_and_my_tranaction.dart';
import 'custom_drawer.dart';
import 'desktop_body.dart';

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
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(flex: 3,child: Padding(
                      padding: const EdgeInsets.only(top:40),
                      child: DesktopBody(),
                    )),
                       SizedBox(
                      width: 28,
                    ),
                    Expanded(flex: 2,
                    child: SingleChildScrollView(
                      child: Column(
                      children: [
                        SizedBox(height: 40,),
                        MyCardAndMyTranaction(),
                         SizedBox(height: 24,),
                         IncomeSection(),
                        
                    
                        
                        
                      ],
                    ))
                    
                    
                    
                        ),
                  ],
                ),
              ),
            ],
          ),
        )],

    );
  }
}


