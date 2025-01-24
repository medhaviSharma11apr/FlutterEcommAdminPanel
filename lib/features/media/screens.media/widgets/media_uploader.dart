import 'dart:developer';

import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/features/media/controller/media_controller.dart';
import 'package:ecommerce_admin_panel/features/media/screens.media/widgets/folder_dropdown.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/enums.dart';
import 'package:ecommerce_admin_panel/utils/constants/image_strings.dart';
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
                    onDropInvalid: (value) {
                      log('ZoneInvalid $value');
                    },
                    onDropMultiple: ((value) async {
                      log('Zone multiple$value');
                    }),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        TImages.adidasLogo,
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      const Text('Drag and drop Images here'),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      OutlinedButton(
                          onPressed: (() {}), child: const Text('Select Image'))
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        // Locally selected images
        TRoundedContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Folders DropDown
                  Row(
                    children: [
                      // folders dropdown
                      Text(
                        "Select Folders ",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      MediaFolderDropDown(
                        onChanged: ((MediaCategory? newvalue) {
                          if (newvalue != null) {
                            controller.selctedpath.value = newvalue;
                          }
                        }),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: (() {}), child: const Text("Remove All ")),
                      const SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      SizedBox(
                        width: TSizes.buttonWidth,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Upload'),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
