import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/widget/all_expenses_header.dart';


import 'all_expenses_item_list.dart';
import 'custom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
          children: [
            AllExpensesHeader(),
            SizedBox(height: 16,),
            AllExpensesItemList(),



          ],


        ),
    );

  }
}
