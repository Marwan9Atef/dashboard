import 'package:flutter/cupertino.dart';

import '../utils/app_color.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.child,this.padding});

  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:  EdgeInsets.all(padding ??20),
        decoration: ShapeDecoration(
          color: AppColor.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: child

    );
  }
}
