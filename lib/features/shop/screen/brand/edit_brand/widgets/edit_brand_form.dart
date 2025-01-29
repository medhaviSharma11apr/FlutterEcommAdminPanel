import 'package:ecommerce_admin_panel/features/shop/model/brandModel.dart';
import 'package:ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../../common/widgets/images/image_uploader.dart';
import '../../../../../../utils/constants/enums.dart';
import '../../../../../../utils/constants/sizes.dart';

class EditBrandForm extends StatelessWidget {
  EditBrandForm({super.key, this.brandModel});
  BrandModel? brandModel;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      width: 500,
      padding: const EdgeInsets.all(
        TSizes.defaultSpace,
      ),
      child: Form(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Heading
          Text(
            'Update brand',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          // Name Text Field
          TextFormField(
            decoration: const InputDecoration(
                labelText: 'Brand Name', prefixIcon: Icon(Icons.gif_box)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          // Categories
          Text(
            'Select Categories',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),

          Wrap(
            spacing: TSizes.sm,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: TSizes.sm),
                child: ChoiceChip(
                  label: const Text("Shoes"),
                  selected: true,
                  onSelected: (value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: TSizes.sm),
                child: ChoiceChip(
                  label: const Text("Track Suits"),
                  selected: true,
                  onSelected: (value) {},
                ),
              )
            ],
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields * 2,
          ),
          // Image Uploader
          ImageUploader(
            width: 80,
            height: 80,
            imageType: ImageType.asset,
            image: TImages.electronicsIcon,
            onIconButtonPressed: () {},
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          // Check Box
          const CheckboxListTile(
            value: true,
            onChanged: null,
            title: Text("Featured"),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields * 2,
          ),

          // Button
          SizedBox(
            width: double.infinity,
            child:
                ElevatedButton(onPressed: (() {}), child: const Text('Update')),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields * 2,
          ),
        ],
      )),
    );
  }
}
