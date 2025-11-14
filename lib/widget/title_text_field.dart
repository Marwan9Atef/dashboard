import 'package:flutter/cupertino.dart';

import '../utils/app_style.dart';
import 'custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key,required this.title,required this.hintText});
  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: AppStyles.styleMedium16(context),),
        SizedBox(height: 12,),
        CustomTextField(hintText: hintText,),

      ],

    );
  }
}
