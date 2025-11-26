import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';

import '../utils/app_color.dart';
import '../utils/app_style.dart';

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({super.key,required this.userInfo});
final UserInfoModel userInfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColor.offWhite,
      child: ListTile(
        leading: SvgPicture.asset(userInfo.image),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(userInfo.title,style: AppStyles.styleSemiBold16(context),)),
        subtitle: FittedBox(
           fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(userInfo.subtitle,style: AppStyles.styleRegular12(context),)),


      ),
    );
  }
}
