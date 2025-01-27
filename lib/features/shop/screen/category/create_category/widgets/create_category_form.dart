import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/common/widgets/images/image_uploader.dart';
import 'package:ecommerce_admin_panel/utils/constants/enums.dart';
import 'package:ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_admin_panel/utils/validators/validation.dart';
import 'package:flutter/material.dart';

class CreateCategoryForm extends StatefulWidget {
  const CreateCategoryForm({super.key});

  @override
  State<CreateCategoryForm> createState() => _CreateCategoryFormState();
}

class _CreateCategoryFormState extends State<CreateCategoryForm> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      width: 500,
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Heading
          const SizedBox(
            height: TSizes.sm,
          ),
          Text(
            'Create New Category',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          // Name Text Field

          TextFormField(
            validator: (value) => TValidator.validateEmptyText('Name', value),
            decoration: const InputDecoration(
                labelText: 'Category Name ', prefixIcon: Icon(Icons.category)),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          DropdownButtonFormField(
              decoration: const InputDecoration(
                  hintText: 'Parents Category',
                  labelText: 'Parents Category',
                  prefixIcon: Icon(Icons.beach_access)),
              items: [
                DropdownMenuItem(
                    value: '',
                    child: Row(
                      children: const [Text('item.name')],
                    ))
              ],
              onChanged: ((value) {})),

          const SizedBox(
            height: TSizes.spaceBtwInputFields * 2,
          ),
          ImageUploader(
            imageType: ImageType.asset,
            width: 80,
            height: 80,
            image: TImages.ikeaLogo,
            onIconButtonPressed: () {},
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          CheckboxListTile(
            
              value: checkBoxValue,
              title: const Text('Featured'),
              onChanged: ((value) {
                setState(() {
                  checkBoxValue = value!;
                });
              })),

          const SizedBox(
            height: TSizes.spaceBtwInputFields * 2,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: const Text('Create'),
              onPressed: () {},
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields * 2,
          )
        ],
      )),
    );
  }
}
