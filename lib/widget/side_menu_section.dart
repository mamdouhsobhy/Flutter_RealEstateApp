import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/constant.dart';
import 'package:real_estate_app/responsive.dart';
import 'package:real_estate_app/widget/contact_info.dart';
import 'package:real_estate_app/widget/goals.dart';
import 'package:real_estate_app/widget/logo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Logo(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  ContactInfo(),
                  Divider(),
                  Goals(),
                  Divider(),
                  SizedBox(height: kDefaultPadding,),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/icons/download.svg"),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text("Download Brachure",style: Responsive.isDesktop(context) ? Theme
                              .of(context)
                              .textTheme
                              .bodyText1!.copyWith(fontSize: 14) :Theme
                              .of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 14),
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: kDefaultPadding,),
                  Container(
                    margin: EdgeInsets.only(top: kDefaultPadding),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    color: kSecondaryColor,
                    alignment: Alignment.center,
                    child: MediaQuery.of(context).size.width >1200? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(onPressed: (){

                        }, child: SvgPicture.asset("assets/icons/linkedin.svg")),
                        TextButton(onPressed: (){

                        }, child: SvgPicture.asset("assets/icons/github.svg")),
                        TextButton(onPressed: (){

                        }, child: SvgPicture.asset("assets/icons/twitter.svg")),
                        TextButton(onPressed: (){

                        }, child: SvgPicture.asset("assets/icons/dribble.svg")),
                      ],
                    ):Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(onPressed: (){

                            }, child: SvgPicture.asset("assets/icons/linkedin.svg")),
                            TextButton(onPressed: (){

                            }, child: SvgPicture.asset("assets/icons/github.svg")),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(onPressed: (){

                            }, child: SvgPicture.asset("assets/icons/twitter.svg")),
                            TextButton(onPressed: (){

                            }, child: SvgPicture.asset("assets/icons/dribble.svg")),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: kDefaultPadding,)
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
