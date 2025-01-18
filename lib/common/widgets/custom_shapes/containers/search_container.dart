import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/device/device_utility.dart';
import 'package:ecommerce_admin_panel/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    Key? key,
    required this.text,
    this.icon = Icons.search,
    this.showBackGround = true,
    this.showBorder = true,
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  }) : super(key: key);
  final EdgeInsetsGeometry padding;
  final String text;
  final IconData? icon;
  final bool showBackGround, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
            color: showBackGround
                ? dark
                    ? TColors.light
                    : TColors.white
                : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: TColors.grey) : null),
        child: Row(children: [
          Icon(
            icon,
            size: 30,
            color: TColors.darkGrey,
          ),
          const SizedBox(
            width: TSizes.spaceBtwItems,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall,
          )
        ]),
      ),
    );
  }
}
