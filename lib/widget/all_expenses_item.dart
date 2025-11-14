import 'package:flutter/material.dart';
import '../models/all_expenses_item_model.dart';
import 'inactive_and_active_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key,required this.allExpensesItemModel,required this.isSelected});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected? ActiveExpensesItem(allExpensesItemModel: allExpensesItemModel,):InactiveExpensesItem(allExpensesItemModel: allExpensesItemModel,);
  }
}
