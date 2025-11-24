class MyTransactionModel {
 final String date;
 final String title;
 final String amount;
 final bool status;

const MyTransactionModel({required this.date, required this.title, required this.amount, required this.status});
static List<MyTransactionModel> myTransactionList = [
  MyTransactionModel(date: "13 April 2022", title: "Cash Withdrawal", amount: r"$20,129", status: false),
  MyTransactionModel(date: "13 Apr, 2022 at 3:30 PM", title: "Landing Page project", amount: r"$20,129", status: true),
  MyTransactionModel(date: "13 April 2022", title: "Juni Mobile App project", amount: r"$20,129", status: true),

];
}