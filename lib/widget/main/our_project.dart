import 'package:flutter/material.dart';
import 'package:real_estate_app/constant.dart';
import 'package:real_estate_app/models/projects.dart';
import 'package:real_estate_app/responsive.dart';
import 'package:real_estate_app/widget/main/project_item.dart';

class OurProject extends StatelessWidget {
  const OurProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Our Projects", style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(height: kDefaultPadding,),
          Responsive(
              desktop:
              buildeGridView(
                  crossAxisExtent: 3,
                  aspectRation: 0.6,
                  builder: (ctx,index) =>
                      Container(
                        color: kSecondaryColor,
                        padding: EdgeInsets.all(kDefaultPadding),
                        child: ProjectItem(title: demoProjects[index].title,image: demoProjects[index].image,description: demoProjects[index].description),
                      )
              ),
              tablet: buildeGridView(
                  crossAxisExtent: MediaQuery.of(context).size.width < 900 ? 2 :3,
                  aspectRation: 0.6,
                  builder: (ctx,index) =>
                      Container(
                        color: kSecondaryColor,
                        padding: EdgeInsets.all(kDefaultPadding),
                        child: ProjectItem(title: demoProjects[index].title,image: demoProjects[index].image,description: demoProjects[index].description),
                      )
              ),
              mobileLarge: buildeGridView(
                  crossAxisExtent: 2,
                  aspectRation: 0.6,
                  builder: (ctx,index) =>
                      Container(
                        color: kSecondaryColor,
                        padding: EdgeInsets.all(kDefaultPadding),
                        child: ProjectItem(title: demoProjects[index].title,image: demoProjects[index].image,description: demoProjects[index].description),
                      )
              ),
              mobile:
              buildeGridView(
                  crossAxisExtent: 1,
                  aspectRation: 0.6,
                  builder: (ctx,index) =>
                      Container(
                        color: kSecondaryColor,
                        padding: EdgeInsets.all(kDefaultPadding),
                        child: ProjectItem(title: demoProjects[index].title,image: demoProjects[index].image,description: demoProjects[index].description),
                      )
              )),
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
        itemCount: demoProjects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisExtent,
          childAspectRatio: aspectRation, // Adjust this value to give more height
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ), itemBuilder: builder
    );
  }
}

