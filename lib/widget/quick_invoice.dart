import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/custom_container.dart';
import 'package:responsive_dash_board/widget/latest_transaction.dart';
import 'package:responsive_dash_board/widget/quick_invoice_form.dart';
import 'package:responsive_dash_board/widget/quick_invoice_header.dart';



class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(child: Column(

      children: [
        QuickInvoiceHeader(),
        SizedBox(height: 24,),
        LatestTransaction(),
        Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        QuickInvoiceForm()



      ],

    ));
  }
}
