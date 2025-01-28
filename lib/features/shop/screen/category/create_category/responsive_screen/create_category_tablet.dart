import 'package:ecommerce_admin_panel/common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/category/create_category/widgets/create_category_form.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CreateCategoryTabletScreen extends StatelessWidget {
  const CreateCategoryTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              BreadCrumbsWithHeading(
                returnToPreviousScreen: true,
                breadcrumbsItem: [Routes.createCategory, 'Create Category'],
                heading: 'Create Category',
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
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
