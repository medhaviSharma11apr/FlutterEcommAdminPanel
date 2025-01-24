import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_admin_panel/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateCategoryForm extends StatelessWidget {
  const CreateCategoryForm({super.key});

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
                  icon: Icon(Icons.beach_access)),
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
          

          const SizedBox(
            height: TSizes.spaceBtwInputFields * 2,
          )
        ],
      )),
    );
  }
}
