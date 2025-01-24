import 'package:ecommerce_admin_panel/common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/category/all_category/tables/data_table.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../routes/routes.dart';
import '../widgets/table_header.dart';

class CategoriesDesktopScreen extends StatelessWidget {
  const CategoriesDesktopScreen({super.key});

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
            children: [
              // BreadCrumbs
              const BreadCrumbsWithHeading(
                  heading: "Categories", breadcrumbsItem: ['Categories']),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Table Body
              TRoundedContainer(
                child: Column(
                  children: [
                    // Table header
                    TableHeader(
                      onChanged: null,
                      onPressed: (() {
                        Get.toNamed(Routes.createCategory);
                      }),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    // Table
                    const CategoryTable(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
