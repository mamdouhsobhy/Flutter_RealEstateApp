import 'package:flutter/material.dart';
import 'package:real_estate_app/constant.dart';
import 'package:real_estate_app/models/recommendation.dart';
import 'package:real_estate_app/responsive.dart';
import 'package:real_estate_app/widget/main/recommendation_item.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Client Recommendations", style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(height: kDefaultPadding,),
          Responsive(desktop: buildeGridView( crossAxisExtent: 3, aspectRation: 1.7, builder: (ctx,index) =>
              Container(
                color: kSecondaryColor,
                padding: EdgeInsets.all(kDefaultPadding),
                child: RecommendationItem(name: demoRecommendations[index].name,source: demoRecommendations[index].source,image: demoRecommendations[index].image,text:demoRecommendations[index].text),
              )
          ),tablet: buildeGridView(
              crossAxisExtent: MediaQuery.of(context).size.width < 900 ? 2 :3,
              aspectRation: 1.7, builder: (ctx,index) =>
              Container(
                color: kSecondaryColor,
                padding: EdgeInsets.all(kDefaultPadding),
                child: RecommendationItem(name: demoRecommendations[index].name,source: demoRecommendations[index].source,image: demoRecommendations[index].image,text:demoRecommendations[index].text),
              )
          ),mobileLarge: buildeGridView( crossAxisExtent: 1, aspectRation: 1.7, builder: (ctx,index) =>
              Container(
                color: kSecondaryColor,
                padding: EdgeInsets.all(kDefaultPadding),
                child: RecommendationItem(name: demoRecommendations[index].name,source: demoRecommendations[index].source,image: demoRecommendations[index].image,text:demoRecommendations[index].text),
              )
          ), mobile: buildeGridView( crossAxisExtent: 1, aspectRation: 1.7, builder: (ctx,index) =>
              Container(
                color: kSecondaryColor,
                padding: EdgeInsets.all(kDefaultPadding),
                child: RecommendationItem(name: demoRecommendations[index].name,source: demoRecommendations[index].source,image: demoRecommendations[index].image,text:demoRecommendations[index].text),
              )
          ))
          ,
        ],
      ),
    );
  }

  GridView buildeGridView({
    required int crossAxisExtent,
    required double aspectRation,
    required IndexedWidgetBuilder builder
  }) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: demoRecommendations.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisExtent,
          childAspectRatio: aspectRation, // Adjust this value to give more height
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ), itemBuilder: builder
    );
  }
}
