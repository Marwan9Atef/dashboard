import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';

import 'all_expenses_item.dart';

class AllExpensesItemList extends StatefulWidget {
  const AllExpensesItemList({super.key});


  @override
  State<AllExpensesItemList> createState() => _AllExpensesItemListState();
}

class _AllExpensesItemListState extends State<AllExpensesItemList> {
 int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensesItemModel.allExpensesItemModel.asMap().entries.map((e) {

        return Expanded(
          child: GestureDetector(
            onTap: (){
              if(e.key!=currentIndex){
                setState(() {
                  currentIndex=e.key;
                });
              }

            },
            child: Padding(
              padding: e.key==1?const EdgeInsets.symmetric(horizontal: 12.0):EdgeInsets.zero,
              child: AllExpensesItem(allExpensesItemModel: e.value,isSelected: currentIndex==e.key,),
            ),
          ),
        );

      },).toList(),

    );
  }
}
