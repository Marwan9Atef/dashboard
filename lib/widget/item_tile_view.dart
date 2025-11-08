import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

import 'active_drawer_item_tile.dart';
import 'not_active_drawer_item_tile.dart';

class ItemTileView extends StatelessWidget {
  const ItemTileView({super.key,required this.isActive,required this.itemModel});
  final bool isActive;
  final DrawerItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return isActive?ActiveDrawerItemTile(itemModel: itemModel,):NotActiveDrawerItemTile(itemModel: itemModel,);
  }
}
