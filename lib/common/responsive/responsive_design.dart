import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomLayoutBuilder extends StatelessWidget {
  const CustomLayoutBuilder({
    Key? key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  }) : super(key: key);

  // Widget for Desktop
  final Widget desktop;
  // widget for tablet
  final Widget tablet;
  // widget for mobile
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((p0, p1) {
        if (p1.maxWidth >= TSizes.desktopScreenSize) {
          return desktop;
        } else if (p1.maxWidth < TSizes.desktopScreenSize &&
            p1.maxWidth >= TSizes.tabletScreenSize) {
          return tablet;
        } else {
          return mobile;
        }
      }),
    );
  }
}
