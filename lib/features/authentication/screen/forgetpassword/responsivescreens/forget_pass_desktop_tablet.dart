import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/layout/templates/login_template.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../resetpassword/widgets/header_form.dart';

class ForgetPasswordDeaktopAndTablet extends StatelessWidget {
  const ForgetPasswordDeaktopAndTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginTemplate(
      child: HeaderAndForm(),
    );
  }
}

