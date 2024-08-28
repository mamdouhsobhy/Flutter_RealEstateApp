import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/constant.dart';
import 'package:real_estate_app/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.7, child: Stack(
      fit: StackFit.expand,
      children: [
      Image.asset("assets/images/background.jpg",
      fit: BoxFit.cover,),
      Container(color: kDarkColor.withOpacity(0.10),),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            Text("Build a grate future for all of us",
              style: Responsive.isDesktop(context) ? Theme
            .of(context)
            .textTheme
            .headline3!
            .copyWith(color: Colors.white,fontWeight: FontWeight.bold):Theme
                  .of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white,fontWeight: FontWeight.bold),
            ),
              ElevatedButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2,
                vertical: kDefaultPadding),
                backgroundColor: kPrimaryColor
              )
              ,
              onPressed: (){

              }, child: Text("Contact us"))

            ],
            ),
      )

    ],
    ),);
    }
}
