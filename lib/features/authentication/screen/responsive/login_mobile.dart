import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../widgets/login_header.dart';

import '../widgets/login_form.dart';

class LoginscreenMobile extends StatelessWidget {
  const LoginscreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            TSizes.defaultSpace,
          ),
          child: Column(
            children: const [
              //Header

              LoginHeader(),

              // Form

              Loginform()
            ],
          ),
        ),
      ),
    );
  }
}
