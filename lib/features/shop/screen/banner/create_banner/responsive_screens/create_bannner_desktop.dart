import 'package:ecommerce_admin_panel/common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../widgets/create_banner_form.dart';

class CreateBannerDesktopScreen extends StatelessWidget {
  const CreateBannerDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // BreadCrumbs
            BreadCrumbsWithHeading(
                heading: 'Create Banner',
                breadcrumbsItem: [Routes.banner, 'Create']),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            // form
            CreateBannerForm()
          ],
        ),
      )),
    );
  }
}
