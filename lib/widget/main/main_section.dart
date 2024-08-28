import 'package:flutter/material.dart';
import 'package:real_estate_app/constant.dart';
import 'package:real_estate_app/screens/home_screen.dart';
import 'package:real_estate_app/widget/main/home_banner.dart';
import 'package:real_estate_app/widget/main/icon_info.dart';
import 'package:real_estate_app/widget/main/our_project.dart';
import 'package:real_estate_app/widget/main/recommendation.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(mainSection: SingleChildScrollView(
      child: Column(
        children: [
          HomeBanner(),
          SizedBox(height: kDefaultPadding,),
          IconInfo(),
          SizedBox(height: kDefaultPadding,),
          OurProject(),
          SizedBox(height: kDefaultPadding,),
          Recommendation(),
          SizedBox(height: kDefaultPadding,),
        ],
      ),
    )
    );
  }
}
