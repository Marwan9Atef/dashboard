import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/widget/custom_container.dart';
import 'my_cards_section.dart';
import 'my_transaction.dart';

class MyCardAndMyTranaction extends StatelessWidget {
  const MyCardAndMyTranaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
              MyCardsSection(),
              Divider(color: AppColor.offWhite,height: 40),
                  MyTransaction(),
        ],
      ),
    );
  }
}