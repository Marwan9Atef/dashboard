import 'package:responsive_dash_board/generated/assets.dart';

class UserInfoModel {
  final String image,title,subtitle;
  UserInfoModel({required this.image,required this.title,required this.subtitle});
  static final  List<UserInfoModel>userInfoList=[
    UserInfoModel(image: Assets.imagesAvatar1, title: "Madrani Andi", subtitle:  "Madraniadi20@gmail"),
    UserInfoModel(image: Assets.imagesAvatar2, title: "Josua Nunito", subtitle:"Josh Nunito@gmail.com"),
    UserInfoModel(image: Assets.imagesAvatar1, title: "Madrani Andi", subtitle: "Madraniadi20@gmail")
  ];



}