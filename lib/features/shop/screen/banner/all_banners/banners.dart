import 'package:ecommerce_admin_panel/common/widgets/layout/templates/site_layout.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/banner/all_banners/responsive_screens/all_banner_desktop.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/banner/all_banners/responsive_screens/all_banner_mobile.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/banner/all_banners/responsive_screens/all_banner_tablet.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BannersScreen extends StatelessWidget {
  const BannersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteLayout(
      desktop: BannerDesktopScreen(),
      mobile: BannerMobileScreen(),
      tablet: BannerTabletScreen(),
    );
  }
}
