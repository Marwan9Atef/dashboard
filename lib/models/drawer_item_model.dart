import '../generated/assets.dart';

class DrawerItemModel {
  final String title;
  final String imagePath;
  DrawerItemModel({required this.title,required this.imagePath});
  static final List<DrawerItemModel>drawerList=[
    DrawerItemModel(title: "Dashboard", imagePath: Assets.imagesDashboard),
    DrawerItemModel(title: "My Transaction", imagePath: Assets.imagesMyTransctions),
    DrawerItemModel(title: "Statistics", imagePath: Assets.imagesStatistics),
    DrawerItemModel(title: "Wallet Account", imagePath: Assets.imagesWalletAccount),
    DrawerItemModel(title: "My Investments", imagePath: Assets.imagesMyInvestments),
    
  ];
  
  
}