import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:real_estate_app/constant.dart';

class ProjectItem extends StatelessWidget {

  ProjectItem({required this.title, required this.image, required this.description});

  final String? title;
  final String? image;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(image!, fit: BoxFit.cover),
        SizedBox(height: kDefaultPadding / 2),
        Text(title!, overflow: TextOverflow.ellipsis, maxLines: 2, style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
        SizedBox(height: kDefaultPadding / 2),
        Text(description!, style: TextStyle(color: Colors.white, height: 1.5,overflow: TextOverflow.ellipsis),maxLines: 4,),
        SizedBox(height: kDefaultPadding/2),
        TextButton(
          style: TextButton.styleFrom(backgroundColor: null),
          onPressed: () {},
          child: Text("More Option >", style: TextStyle(color: kPrimaryColor, fontSize: 12)),
        ),
      ],
    );
  }
}
