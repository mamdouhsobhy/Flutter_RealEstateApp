import 'package:flutter/material.dart';
import 'package:real_estate_app/constant.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset(
              "assets/images/logo.png",
              width: 100,
            ),
            Spacer(),
            Text(
              "Real Estate",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Modern Home with \n great interior design",
              style: TextStyle(height: 1.5, fontWeight: FontWeight.w200),
              textAlign: TextAlign.center,
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
