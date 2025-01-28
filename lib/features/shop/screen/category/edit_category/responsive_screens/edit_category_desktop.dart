import 'package:ecommerce_admin_panel/common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../../routes/routes.dart';
import '../../../../model/categoryModel.dart';
import '../widgets/edit_category_form.dart';

class EditCategoryDesktopScreen extends StatelessWidget {
  const EditCategoryDesktopScreen({super.key, required this.categorymodel});

  final CategoryModel categorymodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                // breadCrumbs
                BreadCrumbsWithHeading(
                    returnToPreviousScreen: true,
                    heading: 'Update Category',
                    breadcrumbsItem: [Routes.categories, ' Upadte Category']), SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    // Form 

                    EditCategoryForm()
              ]),
        ),
      ),
    );
  }
}
