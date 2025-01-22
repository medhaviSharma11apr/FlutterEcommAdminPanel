import 'dart:developer';

import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/features/media/controller/media_controller.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:get/get.dart';

class MediaUploader extends StatelessWidget {
  const MediaUploader({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MediaController());
    return Column(
      children: [
        // Drag and drop area
        TRoundedContainer(
          height: 250,
          showBorder: true,
          borderColor: TColors.borderPrimary,
          backgroundColor: TColors.primaryBackground,
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Expanded(
                  child: Stack(
                alignment: Alignment.center,
                children: [
                  DropzoneView(
                    onCreated: (cont) {
                      controller.dropzoneViewController = cont;
                    },
                    onDrop: (value) {},
                    mime: const ['image/jpeg', 'image/png'],
                    cursor: CursorType.Default,
                    operation: DragOperation.copy,
                    onLoaded: () => log('Zone Loaded'),
                    onError: (e) => log('Zone error:$e'),
                    onHover: () => log('Zone hover'),
                    onLeave: () => log('Zone Left'),
                  )
                ],
              ))
            ],
          ),
        ),

        // Locally selected images
      ],
    );
  }
}
