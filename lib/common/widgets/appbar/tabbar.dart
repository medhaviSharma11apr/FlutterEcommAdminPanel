import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/device/device_utility.dart';

class TabBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const TabBarCustom({super.key, required this.tabs});
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
        color: dark ? Colors.black : Colors.white,
        child: TabBar(
          isScrollable: true,
          indicatorColor: TColors.primary,
          labelColor: dark ? Colors.white : TColors.primary,
          unselectedLabelColor: TColors.darkGrey,
          tabs: tabs,
        ));
  }

  @override
// TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
