import 'package:ecommerce_admin_panel/common/widgets/layout/templates/site_layout.dart';
import 'package:ecommerce_admin_panel/features/authentication/screen/forgetpassword/responsivescreens/forget_pass_desktop_tablet.dart';
import 'package:ecommerce_admin_panel/features/authentication/screen/forgetpassword/responsivescreens/forget_pass_mobile.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteLayout(
      useLayout: false,
      desktop: ForgetPasswordDeaktopAndTablet(),
      tablet: ForgetPasswordDeaktopAndTablet(),
      mobile: ForgetPasswordMobile(),
    );
  }
}
