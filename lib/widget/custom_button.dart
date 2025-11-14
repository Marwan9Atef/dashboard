import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import '../utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColor,required this.title});

  final Color? backgroundColor, textColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: backgroundColor ??AppColor.primaryColor,
        ),
        onPressed: () {},
        child: Text(
          title,
          style: AppStyles.styleSemiBold18(context).copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}