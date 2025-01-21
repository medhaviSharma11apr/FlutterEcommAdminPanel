import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/constants/text_strings.dart';
import 'package:ecommerce_admin_panel/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/sizes.dart';
import '../../controller/login_controller.dart';

class Loginform extends StatelessWidget {
  const Loginform({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginformkey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: TSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            // Email
            TextFormField(
              validator: TValidator.validateEmail,
              controller: controller.email,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.directions),
                labelText: TTexts.email,
              ),
            ),

            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            // PassWord
            Obx((() => TextFormField(
                  obscureText: controller.hidepassword.value,
                  controller: controller.password,
                  validator: ((value) =>
                      TValidator.validateEmptyText('Password', value)),
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      labelText: TTexts.password,
                      suffixIcon: IconButton(
                          onPressed: (() {
                            controller.hidepassword.value =
                                !controller.hidepassword.value;
                          }),
                          icon: !controller.hidepassword.value
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility))),
                ))),
            const SizedBox(
              height: TSizes.spaceBtwInputFields / 2,
            ),

            // remeber me and forget password button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remeber me

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Obx((() => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: ((value) => controller.rememberMe.value =
                            !controller.rememberMe.value)))),
                    const Text(TTexts.rememberMe)
                  ],
                ),

                // Forget pass word

                TextButton(
                  onPressed: (() {
                    Get.toNamed(
                      Routes.forgetPassword,
                    );
                  }),
                  child: const Text(
                    TTexts.forgetPassword,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            // SignIn Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (() {
                    // controller.registerAdmin();
                    controller.emailAndPasswordSignIn();
                  }),
                  child: const Text(
                    TTexts.signIn,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
