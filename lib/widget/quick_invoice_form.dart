import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/widget/custom_button.dart';
import 'package:responsive_dash_board/widget/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'Customer name', hintText: 'Type customer name',)),
            SizedBox(width: 16,),
            Expanded(child: TitleTextField(title: 'Customer Email', hintText: 'Type customer email',)),

          ],

        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'Item name', hintText: 'Type customer name',)),
            SizedBox(width: 16,),
            Expanded(child: TitleTextField(title: 'Item mount', hintText: 'USD',)),

          ],

        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child:CustomButton(title: "Add more details",backgroundColor:AppColor.white,textColor: AppColor.primaryColor,)),
            SizedBox(width: 24,),
            Expanded(child: CustomButton(title: "Send Money")),

          ],

        ),
        SizedBox(height: 32,),


      ],

    );
  }
}
