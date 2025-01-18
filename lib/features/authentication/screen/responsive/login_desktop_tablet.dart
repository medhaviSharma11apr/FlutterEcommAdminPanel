import 'package:ecommerce_admin_panel/common/style/spacing_style.dart';
import 'package:ecommerce_admin_panel/common/widgets/layout/templates/login_template.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_admin_panel/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../widgets/login_form.dart';
import '../widgets/login_header.dart';

class LoginScreenDesktopTablet extends StatelessWidget {
  const LoginScreenDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    bool value = false;
    return LoginTemplate(
        child: Column(
      children: const [
        //Header

        LoginHeader(),

        // Form

        Loginform()
      ],
    ));
  }
}
