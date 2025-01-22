import 'package:ecommerce_admin_panel/features/media/screens.media/widgets/media_content.dart';
import 'package:ecommerce_admin_panel/features/media/screens.media/widgets/media_uploader.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/breadcrumbs/breadcrumbs_with_heading.dart';
import '../../../../routes/routes.dart';

class MediaDesktopScreen extends StatelessWidget {
  const MediaDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            TSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // BreadCrumbs
                  const BreadCrumbsWithHeading(
                    heading: 'Media',
                    breadcrumbsItem: [Routes.login, Routes.dashboard, "Media"],
                    returnToPreviousScreen: true,
                  ),

                  SizedBox(
                    width: TSizes.buttonWidth * 1.5,
                    child: ElevatedButton.icon(
                        onPressed: (() {}),
                        icon: const Icon(Icons.cloud_upload_sharp),
                        label: const Text(
                          'Upload Images',
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // Upload Area
              const MediaUploader(),

              // Media
              const MediaContent()

              //
            ],
          ),
        ),
      ),
    );
  }
}
