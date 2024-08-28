import 'package:flutter/material.dart';

class RecommendationItem extends StatelessWidget {
   RecommendationItem({required this.name,required this.source,required this.image,required this.text});

  final String? name;
  final String? source;
  final String? image;
  final String? text;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 25, // Size of the avatar
            backgroundImage: AssetImage(image!), // Path to your image
          ),
          title: Text(name!,style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
          subtitle: Text(source!,style: TextStyle(fontSize: 10)),
        ),
        Text(text!,style: TextStyle(color: Colors.blueGrey),maxLines: 2,overflow: TextOverflow.ellipsis,)
      ],
    );
  }
}
