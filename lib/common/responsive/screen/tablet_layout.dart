import 'package:ecommerce_admin_panel/common/widgets/layout/sidebar/sidebar.dart';
import 'package:flutter/material.dart';

import '../../widgets/layout/header/header.dart';

class TabletLayout extends StatelessWidget {
  TabletLayout({super.key, required this.body});
  final Widget? body;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const SideBarCustom(),
      appBar: HeaderWidget(
        scaffoldKey: scaffoldKey,
      ),
      body: body ?? Container(),
    );
  }
}
