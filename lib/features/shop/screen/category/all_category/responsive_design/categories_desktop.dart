import 'package:ecommerce_admin_panel/common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

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
              Obx((() => TRoundedContainer(
                    child: Column(
                      children: const [
                        // table header

                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        )
                      ],
                    ),
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
