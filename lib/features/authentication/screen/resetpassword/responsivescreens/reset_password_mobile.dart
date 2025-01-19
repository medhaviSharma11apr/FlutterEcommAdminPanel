import 'package:ecommerce_admin_panel/features/authentication/screen/resetpassword/widgets/reset_password_widget.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResetPasswordMobile extends StatelessWidget {
  const ResetPasswordMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(
          TSizes.defaultSpace,
        ),
        child: ResetPasswordWidget(email: '',),
      ),
    );
  }
}
