import 'package:ecommerce_admin_panel/common/widgets/layout/templates/site_layout.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/category/edit_category/responsive_screens/edit_category_desktop.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/category/edit_category/responsive_screens/edit_category_mobile.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/category/edit_category/responsive_screens/edit_category_tablet.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class EditCategoryScreen extends StatelessWidget {
  const EditCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final category = Get.arguments;
    return  SiteLayout(
      desktop: EditCategoryDesktopScreen(categorymodel: category,),
      tablet: EditCategoryTabletScreen(categorymodel: category,),
      mobile: EditCategoryMobile(categorymodel: category,),
    );
  }
}
