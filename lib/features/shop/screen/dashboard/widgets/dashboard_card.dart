import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';

class DashBoardCard extends StatelessWidget {
  const DashBoardCard({
    Key? key,
    // required this.context,
    required this.title,
    required this.subtitle,
    this.iconData = Icons.arrow_upward,
    this.color = TColors.success,
    required this.status,
    this.onTap,
  }) : super(key: key);

  // final BuildContext context;
  final String title, subtitle;
  final IconData iconData;
  final Color color;
  final int status;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      onTap: onTap,
      child: Column(
        children: [
          // Heading
          TSectionHeading(
            title: title,
            textColor: TColors.textSecondary,
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          // Row

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subtitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(
                        iconData,
                        color: color,
                        size: TSizes.sm,
                      ),
                      Text(
                        '$status%',
                        style: Theme.of(context).textTheme.titleLarge!.apply(
                              color: TColors.success,
                              overflow: TextOverflow.ellipsis,
                            ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 135,
                    child: Text(
                      'Compared to Dec 2025',
                      style: Theme.of(context).textTheme.labelMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
