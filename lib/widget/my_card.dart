import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

import '../generated/assets.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420/215,
      child: Container(
        
     decoration: ShapeDecoration(
       image: const DecorationImage(image: AssetImage(Assets.imagesCardBackground),fit: BoxFit.fill),
       color: AppColor.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      )
     ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.end,
         children: [
           ListTile(
             contentPadding: EdgeInsets.only(top: 16,left: 31,right: 42),
             title: Text("Name card",style: AppStyles.styleRegular14(context).copyWith(color: AppColor.white),),
             subtitle: Text("Syah Bandi",style: AppStyles.styleMedium20(context),),
             trailing: SvgPicture.asset(Assets.imagesGallery),
             
           ),
           Expanded(child: SizedBox()),
           Padding(
             padding: const EdgeInsets.only(right: 24),
             child: Text("0918 8124 0042 8129",style: AppStyles.styleSemiBold24(context).copyWith(color: AppColor.white),),
           ),
           SizedBox(height: 12,),
           Padding(
             padding: const EdgeInsets.only(right:  24),
             child: Text("12/20 - 124",style: AppStyles.styleRegular16(context).copyWith(color: AppColor.white),),
           ),
           Flexible(child: SizedBox(height: 36,))
         ],
       ), 
      ),

    );
  }
}
