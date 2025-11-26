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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
                 updateIndex(0);
              
            },
            child: AllExpensesItem(allExpensesItemModel: AllExpensesItemModel.allExpensesItemModel[0], isSelected: currentIndex==0,),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(allExpensesItemModel: AllExpensesItemModel.allExpensesItemModel[1], isSelected: currentIndex==1,),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(allExpensesItemModel: AllExpensesItemModel.allExpensesItemModel[2], isSelected: currentIndex==2,),
          ),
        )
      ],
    );
    
  }
    void updateIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
