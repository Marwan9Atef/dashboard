import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/chart_income.dart';
import 'package:responsive_dash_board/widget/custom_container.dart';
import 'package:responsive_dash_board/widget/income_bottom.dart';
import 'package:responsive_dash_board/widget/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(height: 26,),
        IncomeBottom(),
      
       
         
          ]
        
      ),
    );
  }
}

