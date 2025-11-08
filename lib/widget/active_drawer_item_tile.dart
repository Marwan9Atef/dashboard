import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_color.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_style.dart';

class ActiveDrawerItemTile extends StatelessWidget {
  const ActiveDrawerItemTile({super.key,required this.itemModel});
  final DrawerItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModel.imagePath),
      title: Text(itemModel.title,style: AppStyles.styleBold16(context),),
      trailing:Container(
        width: 3,
        color: AppColor.primaryColor,
      )

    );
  }
}
