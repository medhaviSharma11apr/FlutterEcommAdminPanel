import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class MenuItemCustom extends StatelessWidget {
  const MenuItemCustom({
    Key? key,
    required this.route,
    required this.icondata,
    required this.itemName,
  }) : super(key: key);

  final String route;
  final IconData icondata;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: TSizes.xs,
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              TSizes.cardRadiusMd,
            ),
            color: TColors.primary),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icon
            Padding(
              padding: const EdgeInsets.only(
                  left: TSizes.lg,
                  top: TSizes.md,
                  right: TSizes.md,
                  bottom: TSizes.md),
              child: Icon(
                icondata,
                color: TColors.white,
              ),
            ),

            // text
            Text(
              itemName,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(color: TColors.white),
            )
          ],
        ),
      ),
    );
  }
}
