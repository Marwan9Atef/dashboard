import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class NotActiveDrawerItemTile extends StatelessWidget {
  const NotActiveDrawerItemTile({super.key,required this.itemModel});
  final DrawerItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModel.imagePath),
      title: Text(itemModel.title,style: AppStyles.styleRegular16(context),),

    );
  }
}
