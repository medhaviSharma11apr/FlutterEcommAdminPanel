import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../features/media/screens.media/pag_heading.dart';
import '../../../routes/routes.dart';

class BreadCrumbsWithHeading extends StatelessWidget {
  const BreadCrumbsWithHeading(
      {super.key,
      required this.heading,
      required this.breadcrumbsItem,
      this.returnToPreviousScreen = false});

  // The Heading for the page
  final String heading;

  // List of breadCrumb items respresenting navigation trails
  final List<String> breadcrumbsItem;
  //
  //// flag indicating wheather to include button to return to previos section
  final bool returnToPreviousScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // BreadCrumb Trail
        Row(
          children: [
            InkWell(
              onTap: (() => Get.offAllNamed(Routes.dashboard)),
              child: Padding(
                padding: const EdgeInsets.all(
                  TSizes.xs,
                ),
                child: Text(
                  "DashBoard",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .apply(fontWeightDelta: -1),
                ),
              ),
            ),
            for (int i = 0; i < breadcrumbsItem.length; i++)
              Row(
                children: [
                  const Text('/'), // seperator
                  InkWell(
                    onTap: i == breadcrumbsItem.length - 1
                        ? null
                        : (() => Get.offAllNamed(breadcrumbsItem[i])),
                    child: Padding(
                      padding: const EdgeInsets.all(
                        TSizes.xs,
                      ),
                      child: Text(
                        i == breadcrumbsItem.length - 1
                            ? breadcrumbsItem[i].capitalize.toString()
                            : capitalize(
                                breadcrumbsItem[i].substring(1),
                              ),
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .apply(fontWeightDelta: -1),
                      ),
                    ),
                  ),
                ],
              )
          ],
        ),

        const SizedBox(
          height: TSizes.sm,
        ),

        // Heading of the page

        Row(
          children: [
            if (returnToPreviousScreen)
              IconButton(
                  onPressed: (() => Get.back()),
                  icon: const Icon(Icons.arrow_back)),
            if (returnToPreviousScreen)
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
            PageHeading(
              heading: heading,
            )
          ],
        )
      ],
    );
  }

  String capitalize(String s) {
    return s.isEmpty ? ' ' : s[0].toUpperCase() + s.substring(1);
  }
}
