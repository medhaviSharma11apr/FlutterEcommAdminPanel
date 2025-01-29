


import 'package:ecommerce_admin_panel/common/widgets/layout/templates/site_layout.dart';
import 'package:flutter/material.dart';

import 'responsive_screens/create_bannner_desktop.dart';
import 'responsive_screens/create_bannner_mobile.dart';
import 'responsive_screens/create_bannner_tablet.dart';


class CreateBannersScreen extends StatelessWidget {
  const CreateBannersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteLayout(
      mobile: CreateBannerDesktopScreen(),
      desktop: CreateBannerTabletScreen(),
      tablet: CreateBannerMobileScreen(),
    
    );
  }
}
