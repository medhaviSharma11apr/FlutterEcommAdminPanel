import 'package:ecommerce_admin_panel/common/widgets/layout/templates/login_template.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/text_strings.dart';
import '../widgets/reset_password_widget.dart';

class ResetPasswordDesktopAndTablet extends StatelessWidget {
  const ResetPasswordDesktopAndTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final email = Get.parameters['email'] ?? '';
    return LoginTemplate(
        child: ResetPasswordWidget(email: email));
  }
}

