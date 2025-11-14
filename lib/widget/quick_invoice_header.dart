import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Quick Invoice",style: AppStyles.styleSemiBold20(context),),
        Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: ShapeDecoration(
            color: AppColor.offWhite,
            shape: OvalBorder(),
          ),
          child: Icon(Icons.add,color: AppColor.primaryColor,),
        )


      ],

    );
  }
}
