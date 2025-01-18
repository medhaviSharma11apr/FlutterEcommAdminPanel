import 'package:ecommerce_admin_panel/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/enums.dart';
import 'package:ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_admin_panel/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  const HeaderWidget({
    super.key,
    this.scaffoldKey,
  });
  final GlobalKey<ScaffoldState>? scaffoldKey;

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
            ? IconButton(
                onPressed: (() {
                  scaffoldKey!.currentState?.openDrawer();
                }),
                icon: const Icon(Icons.menu))
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
          ),
          // user Data

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TRoundedImage(
                width: 40,
                padding: 2,
                height: 40,
                imageUrl: TImages.user,
                imageType: ImageType.asset,
              ),
              const SizedBox(
                width: TSizes.sm,
              ),
              // Name and email
              if (!TDeviceUtils.isMobileScreen(context))
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Medhavi",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      "Medhavi@gmail.com",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                )
            ],
          )
        ],
      ),
    );
  }

  @override
// TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(TDeviceUtils.getAppBarHeight() + 15);
}
