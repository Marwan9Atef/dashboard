import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

import 'latest_transaction_list.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction",style: AppStyles.styleRegular16(context),),
        SizedBox(height: 12,),
        LatestTransactionList(),

      ],
    );
  }
}
