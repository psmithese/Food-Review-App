import 'package:flutter/material.dart';
import 'package:food_review_app/helper/constant.dart';


class ResponsiveLayoutBuilder extends StatelessWidget {
  const ResponsiveLayoutBuilder(
      {super.key, required this.mobile, required this.webDesktopTablet});

  final Widget mobile;
  final Widget webDesktopTablet;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < ResponsiveSizes.mobile.value) {
          return mobile;
        } else {
          return webDesktopTablet;
        }
      },
    );
  }
}
