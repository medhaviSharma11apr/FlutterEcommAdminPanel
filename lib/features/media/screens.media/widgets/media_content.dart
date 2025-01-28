import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MediaContent extends StatelessWidget {
  const MediaContent({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          // Media Image Header
          SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          // Show Media
        ],
      ),
    );
  }
}
