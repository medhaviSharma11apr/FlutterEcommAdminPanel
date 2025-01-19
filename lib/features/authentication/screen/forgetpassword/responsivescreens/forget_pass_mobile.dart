import 'package:ecommerce_admin_panel/features/authentication/screen/resetpassword/widgets/header_form.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ForgetPasswordMobile extends StatelessWidget {
  const ForgetPasswordMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: HeaderAndForm(),
        ),
      ),
    );
  }
}
