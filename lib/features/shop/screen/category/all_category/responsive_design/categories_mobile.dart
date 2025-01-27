import 'package:ecommerce_admin_panel/common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/category/create_category/widgets/create_category_form.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoriesMobileScreen extends StatelessWidget {
  const CategoriesMobileScreen({super.key});

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
                  heading: "Create Category",
                  breadcrumbsItem: [Routes.categories, 'Create Category']),
              SizedBox(
                height: TSizes.spaceBtwSections,
              )

              ,//Formm
              CreateCategoryForm()
            ],
          ),
        ),
      ),
    );
  }
}
