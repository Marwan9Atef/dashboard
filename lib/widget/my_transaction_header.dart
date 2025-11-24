
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/utils/app_style.dart';


class MyTransactionHeader extends StatelessWidget {
  const MyTransactionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("My Transaction",style: AppStyles.styleSemiBold20(context),),
      Text("See All",style: AppStyles.styleMedium16(context).copyWith(color: AppColor.primaryColor),),
    
    ],
    );
  }
}