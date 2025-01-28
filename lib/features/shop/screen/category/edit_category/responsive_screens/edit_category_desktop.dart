import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../model/categoryModel.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start, children: const []),
        ),
      ),
    );
  }
}
