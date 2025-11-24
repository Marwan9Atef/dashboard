import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_detials_model.dart';
import 'package:responsive_dash_board/widget/incomes_item_detials.dart';

class IncomesItemDetialsList extends StatelessWidget {
  const IncomesItemDetialsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: IncomeItemDetialsModel.incomeItemDetialsList.length,
      itemBuilder: (context, index) {
        return IncomesItemsDetials(itemDetailsModel: IncomeItemDetialsModel.incomeItemDetialsList[index]);
      },
    );
  }
}