import 'package:ecommerce_admin_panel/common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/category/create_category/widgets/create_category_form.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../../../routes/routes.dart';

class CreatecategoryDesktop extends StatelessWidget {
  const CreatecategoryDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            TSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              // BreadCrumbs
              BreadCrumbsWithHeading(
                heading: 'Create Category',
                breadcrumbsItem: [Routes.categories, 'Create Categories'],
                returnToPreviousScreen: true,
              ),
              // Form
              CreateCategoryForm(),
            ],
          ),
        ),
      ),
    );
  }
}
