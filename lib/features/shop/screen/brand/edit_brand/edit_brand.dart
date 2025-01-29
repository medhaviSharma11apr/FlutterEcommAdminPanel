import 'package:ecommerce_admin_panel/common/widgets/layout/templates/site_layout.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/brand/edit_brand/responsive_screen/edit_brand_mobile.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/brand/edit_brand/responsive_screen/edit_brand_tablet.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'responsive_screen/edit_brand_desktop.dart';

class EditBrand extends StatelessWidget {
  const EditBrand({
    super.key,
  });
  // BrandModel? brand = BrandModel();

  @override
  Widget build(BuildContext context) {
    return const SiteLayout(
      desktop: EditBrandDesktop(
          // brand: brand!,
          ),
      mobile: EditBrandMobileScreen(),
      tablet: EditBrandTablet(),
    );
  }
}
