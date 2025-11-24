import 'dart:ui';

import 'package:responsive_dash_board/utils/app_color.dart';

class IncomeItemDetialsModel {
    final Color color;
  final String title, value;

  const IncomeItemDetialsModel(
      {required this.color, required this.title, required this.value});
  
    static final List<IncomeItemDetialsModel>incomeItemDetialsList = [
    IncomeItemDetialsModel(
        color: Color(0xff208CC8), title: "Design service", value: "40%"),
    IncomeItemDetialsModel(
        color: AppColor.primaryColor, title: "Design product", value: "25%"),
    IncomeItemDetialsModel(
        color: AppColor.lightBlue, title: "Product royalti", value: "20%"),
    IncomeItemDetialsModel(
        color: Color(0xffE2DECD), title: "Other", value: "22%"),
  ];
}
