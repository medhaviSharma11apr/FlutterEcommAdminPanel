import 'package:ecommerce_admin_panel/common/widgets/layout/sidebar/sidebar.dart';
import 'package:flutter/material.dart';

import '../../widgets/layout/header/header.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(child: SideBarCustom()),
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  // header

                  const HeaderWidget(),

                  body ?? Container(),
                ],
              ))
        ],
      ),
    );
  }
}
