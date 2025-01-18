import 'package:ecommerce_admin_panel/common/widgets/layout/sidebar/sidebar_controller.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    final menuController = Get.put(SideBarController());
    return InkWell(
      onTap: () {
        menuController.menuOnTAp(route);
      },
      onHover: (value) {
        value
            ? menuController.changeActiveItem(route)
            : menuController.changeHoverItem('');
      },
      child: Obx((() => Padding(
            padding: const EdgeInsets.symmetric(
              vertical: TSizes.xs,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  TSizes.cardRadiusMd,
                ),
                color: menuController.isHovering(route) ||
                        menuController.isActive(route)
                    ? TColors.primary
                    : Colors.transparent,
              ),
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
                    child: menuController.isActive(route)
                        ? Icon(
                            icondata,
                            color: TColors.white,
                          )
                        : Icon(icondata,
                            size: 22,
                            color: menuController.isHovering(route)
                                ? TColors.white
                                : TColors.darkGrey),
                  ),

                  // text
                  menuController.isHovering(route) ||
                          menuController.isActive(route)
                      ? Flexible(
                          child: Text(
                            itemName,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(color: TColors.white),
                          ),
                        )
                      : Flexible(
                          child: Text(
                            itemName,
                            style:
                                Theme.of(context).textTheme.bodyMedium!.apply(
                                      color: TColors.darkerGrey,
                                    ),
                          ),
                        )
                ],
              ),
            ),
          ))),
    );
  }
}
