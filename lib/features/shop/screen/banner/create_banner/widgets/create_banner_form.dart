import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/enums.dart';
import 'package:ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CreateBannerForm extends StatelessWidget {
  const CreateBannerForm({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      padding: const EdgeInsets.all(
        TSizes.defaultSpace,
      ),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // heading
          const SizedBox(
            height: TSizes.sm,
          ),
          Text(
            'Create New Banner',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          // Image Uploader and Featured Checkbox
          Column(
            children: [
              GestureDetector(
                child: const RoundedImage(
                  width: 400,
                  height: 200,
                  backgroundColor: TColors.primaryBackground,
                  imageUrl: TImages.animalIcon,
                  imageType: ImageType.asset,
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TextButton(onPressed: (() {}), child: const Text('Select Image'))
            ],
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          Text(
            "Make ypur Bannner active or Inactive",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          CheckboxListTile(
            value: true,
            onChanged: ((value) {}),
            title: const Text('Active'),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          //   DropDown menu Screen

          DropdownButton<String>(items: const [
            DropdownMenuItem<String>(
              value: 'Home',
              child: Text("Home"),
            ),
            DropdownMenuItem<String>(
              value: 'Search',
              child: Text("Search"),
            ),
          ], onChanged: (String? newValue) {}),
          const SizedBox(
            height: TSizes.spaceBtwInputFields * 2,
          ),

          SizedBox(
            width: double.infinity,
            child:
                ElevatedButton(onPressed: () {}, child: const Text('Update')),
          )
        ],
      )),
    );
  }
}
