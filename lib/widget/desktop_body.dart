import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/widget/quick_invoice.dart';
import 'all_expenses.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpenses(),
        SizedBox(height:24 ,),
        QuickInvoice(),
   
      ],
    );
  }
}
