

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../../../../common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import '../../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../../routes/routes.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../category/all_category/widgets/table_header.dart';
import '../table/data_table.dart';

class BannerTabletScreen extends StatelessWidget {
  const BannerTabletScreen({super.key});

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
    ;
  }
}