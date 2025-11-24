import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widget/dots_indicator.dart';
import 'package:responsive_dash_board/widget/my_card_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
   PageController pageController = PageController();
   int currentPage = 0;

   @override
   void initState() {
     super.initState();
     pageController.addListener(() {
       setState(() {
         currentPage = pageController.page!.round();
       });
     });
   }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My Cards",style: AppStyles.styleSemiBold20(context).copyWith(color: AppColor.darkBlue),),
        SizedBox(height: 20,),
        MyCardPageView(pageController: pageController),
        SizedBox(height: 20,),
        DotsIndicator(currentPage: currentPage),
      ],
    );
  }
}