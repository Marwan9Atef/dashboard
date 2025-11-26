import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_detials_model.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/utils/app_style.dart';


class IncomesItemsDetials extends StatefulWidget {
  final IncomeItemDetialsModel itemDetailsModel;

  const IncomesItemsDetials({super.key, required this.itemDetailsModel});

  @override
  State<IncomesItemsDetials> createState() => _IncomesItemsDetialsState();
}

class _IncomesItemsDetialsState extends State<IncomesItemsDetials> {
  late bool dotSize;

  @override
  Widget build(BuildContext context) {
    dotSize = MediaQuery.sizeOf(context).width <=402;
    return ListTile(
      leading: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Container(
          width:dotSize? 5:12,
          height: dotSize? 5:12,
          decoration: ShapeDecoration(
            color: widget.itemDetailsModel.color,
            shape: const OvalBorder(),
          ),
        ),
      ),
      title: Text(
        widget.itemDetailsModel.title,
        style: AppStyles.styleBold16(
          context,
        ).copyWith(color: AppColor.darkBlue,
        fontSize: dotSize? 7:14,
        ),
      ),
      trailing: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          widget.itemDetailsModel.value,
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
  }
}
