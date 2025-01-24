import 'package:ecommerce_admin_panel/common/widgets/layout/templates/site_layout.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../responsive_design/categories_desktop.dart';
import '../responsive_design/categories_mobile.dart';
import '../responsive_design/categories_tablet.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteLayout(
      desktop: CategoriesDesktopScreen(),
      tablet: CategoriesTabletScreen(),
      mobile: CategoriesMobileScreen(),
    );
  }
}
