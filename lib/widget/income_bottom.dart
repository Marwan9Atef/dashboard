import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/chart_income.dart';
import 'package:responsive_dash_board/widget/incomes_item_detials_list.dart';


class IncomeBottom extends StatelessWidget {
  const IncomeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(child: IncomeChart()),
      Expanded(child: IncomesItemDetialsList()),
    
    
    
    ]);
  }
}
