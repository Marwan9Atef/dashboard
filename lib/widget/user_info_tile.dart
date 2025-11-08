import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_color.dart';
import '../utils/app_style.dart';

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({super.key,required this.title,required this.imagePath,required this.subtitle});
  final String imagePath;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColor.offWhite,
      child: ListTile(
        leading: SvgPicture.asset(imagePath),
        title: Text(title,style: AppStyles.styleSemiBold16(context),),
        subtitle: Text(subtitle,style: AppStyles.styleRegular12(context),),


      ),
    );
  }
}
