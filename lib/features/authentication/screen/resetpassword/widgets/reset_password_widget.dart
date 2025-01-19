import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_admin_panel/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/image_strings.dart';

class ResetPasswordWidget extends StatelessWidget {
  const ResetPasswordWidget({
    Key? key,
    required this.email,
  }) : super(key: key);

  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Header
        Row(
          children: [
            IconButton(
                onPressed: (() => Get.offAllNamed(
                      Routes.login,
                    )),
                icon: const Icon(CupertinoIcons.clear)),
          ],
        ),

        const SizedBox(
          height: TSizes.spaceBtwItems,
        )
        // Image

        ,
        const Image(
          image: AssetImage(TImages.deliveredEmailIllustration),
          width: 300,
          height: 300,
        ),

        // title and sub title

        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        Text(
          TTexts.changeYourPasswordTitle,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),

        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        Text(
          email ?? 'No Email Found',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelLarge,
        ),

        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        Text(
          TTexts.changeYourPasswordSubTitle,
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: TextAlign.center,
        ),

        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        // Buttons

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: (() {
                Get.back();
              }),
              child: const Text(
                TTexts.done,
              )),
        ),

        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: (() {
                // Get.back();
              }),
              child: const Text(
                TTexts.resendEmail,
              )),
        ),
      ],
    );
  }
}
