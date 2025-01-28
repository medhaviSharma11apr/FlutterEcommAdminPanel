import 'package:ecommerce_admin_panel/common/widgets/layout/templates/site_layout.dart';
import 'package:flutter/material.dart';
import 'responsive_screen/brand_desktop_screen.dart';
import 'responsive_screen/brand_mobile_screen.dart';
import 'responsive_screen/brand_tablet_screen.dart';

class BrandsScreens extends StatelessWidget {
  const BrandsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteLayout(
      desktop: BrandsDesktopScreen(),
      tablet: BrandTabletScreen(),
      mobile: BrandMobileScreen(),
    );
  }
}
