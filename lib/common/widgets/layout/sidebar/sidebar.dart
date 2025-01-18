import 'package:ecommerce_admin_panel/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce_admin_panel/common/widgets/layout/sidebar/menu/menu_item.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_admin_panel/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SideBarCustom extends StatelessWidget {
  const SideBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunctions.isDarkMode(context);
    return Drawer(
      shape: const BeveledRectangleBorder(),
      child: Container(
        decoration: const BoxDecoration(
            color: TColors.white,
            border: Border(
                right: BorderSide(
              color: TColors.grey,
              width: 1,
            ))),
        child: SingleChildScrollView(
            child: Column(
          children: [
            // Image
            CircularImage(
              dark: dark,
              image: TImages.darkAppLogo,
              height: 100,
              width: 100,
              backgroundcolor: Colors.transparent,
            ),

            // space

            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            // Arrange vertically stuffs

            Padding(
              padding: const EdgeInsets.all(TSizes.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "MENU",
                    style: Theme.of(context).textTheme.bodySmall!.apply(
                          letterSpacingDelta: 1.2,
                        ),
                  ),

                  // Menu Items
                  const MenuItemCustom(
                    icondata: Icons.circle_outlined,
                    itemName: 'Dash Board',
                    route: Routes.firstscreen,
                  ),

                  const MenuItemCustom(
                    icondata: Icons.image,
                    itemName: 'Media',
                    route: Routes.secondscreen,
                  ),

                  const MenuItemCustom(
                    icondata: Icons.picture_in_picture,
                    itemName: 'Banners',
                    route: Routes.responsiveDesignScreen,
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
