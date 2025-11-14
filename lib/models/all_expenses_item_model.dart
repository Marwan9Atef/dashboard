import 'package:responsive_dash_board/generated/assets.dart';


class AllExpensesItemModel {
final  String image,title,date,amount;

 const AllExpensesItemModel({required this.image,required this.title,required this.date,required this.amount});
static final List<AllExpensesItemModel> allExpensesItemModel = [
  AllExpensesItemModel(image: Assets.imagesBalance, title: "Balance", date: "April 2022", amount: r"$20,129"),
  AllExpensesItemModel(image: Assets.imagesIncome, title: "Income", date: "April 2022", amount: r"$20,129"),
  AllExpensesItemModel(image: Assets.imagesExpenses, title: "Expenses", date: "April 2022", amount: r"$20,129"),



];


}