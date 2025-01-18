import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_admin_panel/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  const HeaderWidget({super.key});

  // Header Widget For Applications

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: TSizes.md,
        vertical: TSizes.sm,
      ),
      decoration: const BoxDecoration(
          color: TColors.white,
          border: Border(bottom: BorderSide(color: TColors.grey, width: 1))),
      child: AppBar(
        leading: !TDeviceUtils.isDesktopScreen(context)
            ? IconButton(onPressed: (() {}), icon: const Icon(Icons.menu))
            : null,
        title: SizedBox(
          width: 400,
          // height: 80,
          child: TDeviceUtils.isDesktopScreen(context)
              ? TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search_rounded),
                      hintText: 'Search Anything'),
                )
              : null,
        ),
        actions: [
          if (!TDeviceUtils.isDesktopScreen(context))
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                )),
          IconButton(onPressed: (() {}), icon: const Icon(Icons.notifications)),
          const SizedBox(
            width: TSizes.spaceBtwItems / 2,
          )
          // user Data
        ],
      ),
    );
  }

  @override
// TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(TDeviceUtils.getAppBarHeight() + 15);
}
