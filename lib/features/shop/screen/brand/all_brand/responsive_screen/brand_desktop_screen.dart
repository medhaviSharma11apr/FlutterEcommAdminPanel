import 'package:ecommerce_admin_panel/common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/brand/all_brand/table/data_table.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/category/all_category/widgets/table_header.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrandsDesktopScreen extends StatelessWidget {
  const BrandsDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bread Crumbs
              const BreadCrumbsWithHeading(
                  heading: 'Brands', breadcrumbsItem: ['Brands']),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Table Body
              RoundedContainer(
                child: Column(
                  children: [
                    // Table Header
                    TableHeader(
                      buttonText: 'Create New Brand',
                      onPressed: () {
                        Get.toNamed(Routes.createBrand);
                      },
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    // Table

                    const BrandTable()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
