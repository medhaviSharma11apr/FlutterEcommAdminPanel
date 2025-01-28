import 'package:ecommerce_admin_panel/common/widgets/brands/brand_card.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../custom_shapes/containers/rounded_container.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    Key? key,
    required this.dark,
    required this.images,
  }) : super(key: key);

  final bool dark;
  final List<String> images;

  Widget brandTopProductImagesWidget(String image, context) {
    return Expanded(
      child: RoundedContainer(
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        height: 100,
        backgroundColor: dark ? TColors.darkerGrey : TColors.light,
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brand With Product Count
          BrandCard(
            dark: dark,
            showBorder: false,
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          // Brand Top 3 Product Image
          Row(
              children: images
                  .map((image) => brandTopProductImagesWidget(image, context))
                  .toList()),
        ],
      ),
    );
  }
}
