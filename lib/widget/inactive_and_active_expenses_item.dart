import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_color.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_style.dart';
import 'all_expenses_item_header.dart';

class InactiveExpensesItem extends StatelessWidget {
  const InactiveExpensesItem({super.key,required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: AppColor.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
           side: BorderSide(
            width: 1,
            color: AppColor.white,
          ),
        ),
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(imagePath: allExpensesItemModel.image),
          const SizedBox(height: 34,),
          FittedBox(fit: BoxFit.scaleDown,child: Text(allExpensesItemModel.title,style: AppStyles.styleBold16(context),)),
          const SizedBox(height: 8,),
          FittedBox(fit: BoxFit.scaleDown, child: Text(allExpensesItemModel.date,style: AppStyles.styleRegular14(context),)),
          const SizedBox(height: 16,),
          FittedBox(fit: BoxFit.scaleDown, child: Text(allExpensesItemModel.amount,style: AppStyles.styleSemiBold24(context),))


        ],
      ),
    );
  }
}
class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({super.key,required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: AppColor.primaryColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: const Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(imagePath: allExpensesItemModel.image,isInactive: false,),
          const SizedBox(height: 34,),
          FittedBox(fit: BoxFit.scaleDown, child: Text(allExpensesItemModel.title,style: AppStyles.styleBold16(context).copyWith(color: AppColor.white),)),
          const SizedBox(height: 8,),
          FittedBox(fit: BoxFit.scaleDown, child: Text(allExpensesItemModel.date,style: AppStyles.styleRegular14(context).copyWith(color: AppColor.offWhite),)),
          const SizedBox(height: 16,),
          FittedBox(fit: BoxFit.scaleDown, child: Text(allExpensesItemModel.amount,style: AppStyles.styleSemiBold24(context).copyWith(color: AppColor.white),))


        ],
      ),
    );
  }
}

