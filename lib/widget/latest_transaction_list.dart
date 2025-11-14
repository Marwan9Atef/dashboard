import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/widget/user_info_tile.dart';

class LatestTransactionList extends StatelessWidget {
  const LatestTransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: UserInfoModel.userInfoList.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(child: UserInfoTile(userInfo: UserInfoModel.userInfoList[index],));
        },
      ),
    );
  }
}
