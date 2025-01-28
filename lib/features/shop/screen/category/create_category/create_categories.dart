import 'package:ecommerce_admin_panel/common/widgets/layout/templates/site_layout.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'responsive_screen/create_category_desktop.dart';
import 'responsive_screen/create_category_tablet.dart';

class CreateCategoryScreen extends StatelessWidget {
  const CreateCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteLayout(
      desktop: CreatecategoryDesktop(),
      tablet: CreateCategoryTabletScreen(),
    );
  }
}
