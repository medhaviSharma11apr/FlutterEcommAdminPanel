import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../custom_shapes/containers/rounded_container.dart';

class CouponCodeWidget extends StatelessWidget {
  const CouponCodeWidget({
    Key? key,
    required this.dark,
  }) : super(key: key);

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: const EdgeInsets.only(
          top: TSizes.sm, bottom: TSizes.sm, right: TSizes.sm, left: TSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Have a promo code? Enter here",
                focusedBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          // In Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: dark
                      ? TColors.white.withOpacity(0.5)
                      : TColors.dark.withOpacity(0.5),
                  backgroundColor: TColors.grey.withOpacity(0.2),
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.1),
                  ),
                ),
                onPressed: (() => null),
                child: const Text(
                  'Apply',
                )),
          )
        ],
      ),
    );
  }
}
