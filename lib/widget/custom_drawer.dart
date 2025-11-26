import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/widget/drawer_item_list.dart';
import 'package:responsive_dash_board/widget/not_active_drawer_item_tile.dart';
import 'package:responsive_dash_board/widget/user_info_tile.dart';

import '../generated/assets.dart';
import '../models/drawer_item_model.dart';
import '../models/user_info_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      child:SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: UserInfoTile(userInfo: UserInfoModel.userInfoList[0],)),
            DrawerItemList(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                      child: SizedBox(
                        height: 20,
                      )),
                  NotActiveDrawerItemTile(
                    itemModel: DrawerItemModel(
                        title: 'Setting system', imagePath: Assets.imagesSettings),
                  ),
                  NotActiveDrawerItemTile(
                    itemModel: DrawerItemModel(
                        title: 'Logout account', imagePath: Assets.imagesLogout),
                  ),
                  SizedBox(
                    height: 48,
                  )
        
        
                ],
        
              ),
            )
            
        
            
          ],
          
        ),
      ),

    );
  }
}
