
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_color.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key,required this.imagePath,this.isInactive=true});
  final String imagePath;
  final bool isInactive;

  @override
  Widget build(BuildContext context) {
    return Row
      (
      children: [
    Flexible(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 60),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: ShapeDecoration(
              color:isInactive?AppColor.offWhite:AppColor.white.withValues(alpha: 0.10),
              shape: OvalBorder(),
          
            ),
          
            child: Center(child: SvgPicture.asset(imagePath,colorFilter:ColorFilter.mode(isInactive?AppColor.primaryColor:AppColor.white, BlendMode.srcIn) ,)) ,
          
          ),
        ),
      ),
    ),
        Spacer(),
        Transform.rotate(angle: -1.5707963268*2 ,child: Icon(Icons.arrow_back_ios_new,color: isInactive?AppColor.darkBlue:AppColor.white,))


      ],
    );
  }
}
