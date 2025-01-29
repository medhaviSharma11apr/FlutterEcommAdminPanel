import 'package:ecommerce_admin_panel/common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/banner/all_banners/table/data_table.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/category/all_category/widgets/table_header.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class BannerDesktopScreen extends StatelessWidget {
  const BannerDesktopScreen({super.key});

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
                  heading: "Banners", breadcrumbsItem: ['Banners']),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Trounded
              RoundedContainer(
                child: Column(
                  children: [
                    // Table Header
                    TableHeader(
                      buttonText: 'Create New Banner',
                      onPressed: () => Get.toNamed(Routes.createBanner),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    // Table
                    const BannerTable(),
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
