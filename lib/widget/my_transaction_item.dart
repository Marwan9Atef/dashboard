import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/my_transaction_model.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class MyTransactionItem extends StatelessWidget {
  const MyTransactionItem({super.key, required this.myTransactionModel});
  final MyTransactionModel myTransactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
          color:AppColor.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12)
    ),
      child:ListTile(
        title:Text(myTransactionModel.title,style:AppStyles.styleSemiBold16(context)),
        subtitle:Text(myTransactionModel.date,style:AppStyles.styleRegular16(context).copyWith(color:AppColor.gray)),
        trailing:Text(myTransactionModel.amount,style:AppStyles.styleSemiBold20(context).copyWith(color:myTransactionModel.status?AppColor.green:AppColor.red)),


      )
       
     
    );
  }
}