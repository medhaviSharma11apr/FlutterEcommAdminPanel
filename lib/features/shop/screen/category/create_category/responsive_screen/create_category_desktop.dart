import 'package:ecommerce_admin_panel/common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../../routes/routes.dart';

class CreatecategoryDesktop extends StatelessWidget {
  const CreatecategoryDesktop({super.key});

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
            children: const [
              // BreadCrumbs
              BreadCrumbsWithHeading(
                heading: 'Create Category',
                breadcrumbsItem: [Routes.categories, 'Create Categories'],
                returnToPreviousScreen: true,
              ),
              // Form
            ],
          ),
        ),
      ),
    );
  }
}
