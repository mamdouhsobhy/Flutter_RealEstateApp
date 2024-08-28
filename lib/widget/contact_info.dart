import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/constant.dart';
import 'package:real_estate_app/responsive.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  Widget buildRowContactInfo(String title , String value , BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(fontSize: 12,color: Colors.white),),
          Expanded(child: Text(value,textAlign: TextAlign.end,style: TextStyle(fontSize: 12),)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildRowContactInfo("Address:", "Station street 5",context),
        buildRowContactInfo("Country:", "Egypt",context),
        buildRowContactInfo("Email:", "mamdouhsobhy923@gmail.com",context),
        buildRowContactInfo("Mobile:", "+201094903199",context),
        buildRowContactInfo("Website:", "www.barcelona.com",context),
      ],
    );
  }
}
