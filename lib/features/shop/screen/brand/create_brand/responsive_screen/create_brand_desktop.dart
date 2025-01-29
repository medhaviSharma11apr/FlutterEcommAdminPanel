import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import '../../../../../../routes/routes.dart';
import '../widgets/create_brand_form.dart';

class CreateBrandDesktopScreen extends StatelessWidget {
  const CreateBrandDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              // Bread Crumbs
              BreadCrumbsWithHeading(
                  returnToPreviousScreen: true,
                  heading: 'Create Brands',
                  breadcrumbsItem: [Routes.categories, 'Create Brand']),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // Form
              CreateBrandForm()
            ],
          ),
        ),
      ),
    );
  }
}
