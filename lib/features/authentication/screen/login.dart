import 'package:ecommerce_admin_panel/common/widgets/layout/templates/site_layout.dart';
import 'package:ecommerce_admin_panel/features/authentication/screen/responsive/login_desktop_tablet.dart';
import 'package:ecommerce_admin_panel/features/authentication/screen/responsive/login_mobile.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteLayout(
      useLayout: false,
      desktop: LoginScreenDesktopTablet(),
      mobile: LoginscreenMobile(),
    );
  }
}
