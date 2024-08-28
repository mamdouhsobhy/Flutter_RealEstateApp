import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/constant.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  Widget buildGoalRow(String title){
    return Padding(padding: EdgeInsets.only(bottom: kDefaultPadding / 2),
    child: Row(
      children: [
        SvgPicture.asset("assets/icons/check.svg"),
        SizedBox(width: 8.0,),
        Text(title)
      ],
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: kDefaultPadding,),
        Text("Goals", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        SizedBox(height: kDefaultPadding,),
        buildGoalRow("Planning Stage"),
        buildGoalRow("Development"),
        buildGoalRow("Execution phase"),
        buildGoalRow("New way to living"),
      ],
    );
  }
}
