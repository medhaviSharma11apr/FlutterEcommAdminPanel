import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';

class BrandTitleWidgetWithVerifiedIcon extends StatelessWidget {
  const BrandTitleWidgetWithVerifiedIcon({
    Key? key,
    required this.title,
    this.maxline = 1,
    this.textColor,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  }) : super(key: key);

  final String title;
  final int maxline;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            "Nike",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        const SizedBox(
          width: TSizes.xs,
        ),
        const Icon(
          Icons.verified,
          color: TColors.primary,
        )
      ],
    );
  }
}
