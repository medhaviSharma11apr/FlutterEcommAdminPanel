


import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/text_strings.dart';

class HeaderAndForm extends StatelessWidget {
  const HeaderAndForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Header
        IconButton(
            onPressed: (() => Get.back()), icon: const Icon(Icons.arrow_back)),

        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        Text(
          TTexts.forgetPasswordTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),

        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        Text(
          TTexts.forgetPasswordSubTitle,
          style: Theme.of(context).textTheme.labelMedium,
        ),

        const SizedBox(
          height: TSizes.spaceBtwSections * 1.5,
        ),

        /// Formm
        Form(
          child: TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.email, prefixIcon: Icon(Icons.fork_right)),
          ),
        ),

        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        /// Submit Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: (() {
                Get.toNamed(Routes.resetPassword,
                    parameters: {'email': 'somerandomemail'});
              }),
              child: const Text(
                TTexts.submit,
              )),
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections * 2,
        ),
      ],
    );
  }
}
