import 'package:ecommerce_admin_panel/common/widgets/images/t_circular_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../texts/brand_title_text_with_verified_icon.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    Key? key,
    this.showBorder = true,
    required this.dark,
    this.onTap,
  }) : super(key: key);

  final bool dark;
  final void Function()? onTap;

  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // Icons
            Flexible(
              child: CircularImage(
                dark: dark,
                image: TImages.animalIcon,
                overlaycolor: dark ? Colors.white : Colors.black,
                imageType: ImageType.asset,
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),

            /// Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 100,
                    child: BrandTitleWidgetWithVerifiedIcon(
                      title: "Nike",
                      brandTextSizes: TextSizes.large,
                    ),
                  ),
                  Text(
                    '256 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
