import 'dart:html';

import 'package:ecommerce_admin_panel/common/responsive/responsive_design.dart';
import 'package:ecommerce_admin_panel/common/responsive/screen/mobile_layout.dart';
import 'package:flutter/material.dart';

import '../../../responsive/screen/dektop_layout.dart';
import '../../../responsive/screen/tablet_layout.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({
    super.key,
    this.desktop,
    this.tablet,
    this.mobile,
    this.useLayout = true,
  });

  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  final bool useLayout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomLayoutBuilder(
        desktop: useLayout
            ? DesktopLayout(
                body: desktop,
              )
            : desktop ?? Container(),
        mobile: useLayout
            ? MobileLayout(
                body: mobile,
              )
            : mobile ?? const SizedBox(),
        tablet: useLayout
            ? TabletLayout(
                body: tablet,
              )
            : tablet ?? Container(),
      ),
    );
  }
}
