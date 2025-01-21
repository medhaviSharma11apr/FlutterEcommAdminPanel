import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect(
      {super.key,
      required this.width,
      required this.height,
      this.radius = 15,
      this.colors});

  final double width, height, radius;
  final Color? colors;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
        baseColor: dark ? Colors.grey[850]! : Colors.grey[300]!,
        highlightColor: dark ? Colors.grey[700]! : Colors.grey[100]!,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              color: colors ?? (dark ? TColors.darkerGrey : TColors.white)),
        ));
  }
}
