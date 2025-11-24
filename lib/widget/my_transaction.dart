import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widget/my_tranaction_item_list.dart';
import 'package:responsive_dash_board/widget/my_transaction_header.dart';

class MyTransaction extends StatelessWidget {
  const MyTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
MyTransactionHeader(),
SizedBox(height: 20,),
Text("13 April 2022",style: AppStyles.styleMedium16(context).copyWith(color: AppColor.gray),),
SizedBox(height: 20,),
MyTranactionItemList(),

],

    );
  }
}
