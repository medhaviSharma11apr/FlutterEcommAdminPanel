import 'package:ecommerce_admin_panel/common/widgets/layout/templates/site_layout.dart';
// import 'package:ecommerce_admin_panel/features/shop/screen.dashboard/dashboard/responsivescreens.dashBoard/dashboard_desktop.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/dashboard/responsivescreens.dashBoard/dashboard_mobile.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'responsivescreens.dashBoard/dashboard_desktop.dart';
import 'responsivescreens.dashBoard/dashboard_tablet.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteLayout(
      desktop: DashBoardDesktopScreen(),
      tablet: DashboardTablet(),
      mobile: DashBoardMobile(),
    );
  }
}
