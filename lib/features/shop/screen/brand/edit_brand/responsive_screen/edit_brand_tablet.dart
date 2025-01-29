import 'package:flutter/material.dart';

import '../../../../../../common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import '../../../../../../routes/routes.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../widgets/edit_brand_form.dart';

class EditBrandTablet extends StatelessWidget {
  const EditBrandTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
        ),
      )),
    );
  }
}
