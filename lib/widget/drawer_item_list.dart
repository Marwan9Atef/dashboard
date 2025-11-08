import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/item_tile_view.dart';

import '../models/drawer_item_model.dart';

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({super.key});

  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}

class _DrawerItemListState extends State<DrawerItemList> {
   int activeIndex=0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) =>GestureDetector(onTap: () {
if(activeIndex==index){
  return;
}
activeIndex=index;
setState(() {

});

      }

          ,child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: ItemTileView(isActive: activeIndex==index,itemModel: DrawerItemModel.drawerList[index],),
          )) ,
    itemCount: DrawerItemModel.drawerList.length,

    );
  }
}
