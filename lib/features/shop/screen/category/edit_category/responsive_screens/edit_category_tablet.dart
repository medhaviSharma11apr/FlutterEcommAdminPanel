import 'package:ecommerce_admin_panel/features/shop/model/categoryModel.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import '../../../../../../routes/routes.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../widgets/edit_category_form.dart';

class EditCategoryTabletScreen extends StatelessWidget {
  const EditCategoryTabletScreen({super.key, required this.categorymodel});
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
                    breadcrumbsItem: [Routes.categories, ' Upadte Category']),
                SizedBox(
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
