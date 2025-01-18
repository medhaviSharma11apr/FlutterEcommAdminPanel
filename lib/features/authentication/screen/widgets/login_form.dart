import 'package:ecommerce_admin_panel/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class Loginform extends StatelessWidget {
  const Loginform({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: TSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.directions),
                labelText: TTexts.email,
              ),
            ),

            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            // PassWord
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password),
                  labelText: TTexts.password,
                  suffixIcon: IconButton(
                      onPressed: (() {}), icon: const Icon(Icons.visibility))),
            ),
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
                    Checkbox(value: true, onChanged: ((value) => false)),
                    const Text(TTexts.rememberMe)
                  ],
                ),

                // Forget pass word

                TextButton(
                  onPressed: (() {}),
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
                  onPressed: (() {}),
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
