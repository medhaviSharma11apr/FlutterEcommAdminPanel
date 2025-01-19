import 'package:ecommerce_admin_panel/common/widgets/layout/templates/site_layout.dart';
import 'package:ecommerce_admin_panel/features/authentication/screen/resetpassword/responsivescreens/reset_password_desktop_tablet.dart';
import 'package:ecommerce_admin_panel/features/authentication/screen/resetpassword/responsivescreens/reset_password_mobile.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteLayout(
      useLayout: false,
      desktop: ResetPasswordDesktopAndTablet(),
      tablet: ResetPasswordDesktopAndTablet(),
      mobile: ResetPasswordMobile(),
    );
  }
}
