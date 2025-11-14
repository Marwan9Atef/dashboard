import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_color.dart';

import '../utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16(context).copyWith(color: AppColor.gray),
        fillColor: AppColor.offWhite,
        filled: true,
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),


      ),

    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: AppColor.offWhite
        )



      );
  }
}
