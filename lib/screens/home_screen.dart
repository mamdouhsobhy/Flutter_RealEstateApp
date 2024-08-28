import 'package:flutter/material.dart';
import 'package:real_estate_app/constant.dart';
import 'package:real_estate_app/responsive.dart';
import 'package:real_estate_app/widget/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({required this.mainSection, super.key});

  final Widget mainSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,

            ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440.0),
            child: Row(
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(flex: 2, child: SideMenuSection()),
                Expanded(flex: 7, child: mainSection),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
