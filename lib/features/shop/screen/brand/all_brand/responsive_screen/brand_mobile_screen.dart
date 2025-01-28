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

class BrandMobileScreen extends StatelessWidget {
  const BrandMobileScreen({super.key});

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
