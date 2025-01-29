import 'package:ecommerce_admin_panel/common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/brand/edit_brand/widgets/edit_brand_form.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../model/brandModel.dart';

class EditBrandDesktop extends StatelessWidget {
  const EditBrandDesktop({
    super.key,
  });

  // final BrandModel brand;

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
                returnToPreviousScreen: true,
                heading: 'Update brand',
                breadcrumbsItem: [Routes.categories, 'Update Brand']),

            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            // form
            EditBrandForm(
              // brandModel: brand,
            )
          ],
        ),
      )),
    );
  }
}
