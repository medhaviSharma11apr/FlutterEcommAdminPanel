import 'package:ecommerce_admin_panel/common/widgets/layout/templates/site_layout.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/brand/create_brand/responsive_screen/create_brand_mobile.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/brand/create_brand/responsive_screen/create_brand_tablet.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'responsive_screen/create_brand_desktop.dart';

class CreateBrand extends StatelessWidget {
  const CreateBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteLayout(
      desktop: CreateBrandDesktopScreen(),
      mobile:  CreateBrandMobileScreen(),
      tablet:  CreateBrandTabletScreen(),
    );
  }
}
