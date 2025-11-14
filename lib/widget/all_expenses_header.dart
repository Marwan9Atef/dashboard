import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("All Expenses",style: AppStyles.styleSemiBold20(context),),
            Expanded(
              child: SizedBox(),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                color: AppColor.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: const Color(0xFFF1F1F1),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                children: [
                  Text("Monthly",style: AppStyles.styleMedium16(context),),
                  SizedBox(width: 18,),
                  Transform.rotate(angle: -1.5707963268 ,child: Icon(Icons.arrow_back_ios_new))

                ],
              ),
            )


          ],
        )

      ],


    );
  }
}
