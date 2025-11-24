import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/my_transaction_model.dart';
import 'package:responsive_dash_board/widget/my_transaction_item.dart';

class MyTranactionItemList extends StatelessWidget {
  const MyTranactionItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        MyTransactionModel.myTransactionList.length,
        (index) => MyTransactionItem(myTransactionModel: MyTransactionModel.myTransactionList[index]),
      ),
    );
  }
}