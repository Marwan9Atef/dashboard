import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_detials_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
class IncomesItemsDetials extends StatelessWidget {

  final IncomeItemDetialsModel itemDetailsModel;

  const IncomesItemsDetials({super.key,required this.itemDetailsModel});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}