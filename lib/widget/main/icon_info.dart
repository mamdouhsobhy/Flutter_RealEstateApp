import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/constant.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  Widget buildIconInfo(IconData iconData , String value , String title){
    return Column(
      children: [
        Icon(iconData,color: Colors.white,),
        SizedBox(height: kDefaultPadding / 2,),
        Text(value,style: TextStyle(fontSize: 20,color: kPrimaryColor,fontWeight: FontWeight.bold),),
        Text(title,style: TextStyle(color: Colors.white,fontSize: 10),),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildIconInfo(Icons.supervisor_account, "+67", "Client"),
        buildIconInfo(Icons.location_on, "+137", "projects"),
        buildIconInfo(Icons.public, "+30", "Countries"),
        buildIconInfo(Icons.star, "+13K", "Stars"),
      ],
    );
  }
}
