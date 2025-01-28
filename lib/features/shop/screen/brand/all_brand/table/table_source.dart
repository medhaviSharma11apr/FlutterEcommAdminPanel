import 'package:data_table_2/data_table_2.dart';
import 'package:ecommerce_admin_panel/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/category/all_category/tables/table_action_icon_button.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/enums.dart';
import 'package:ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:ecommerce_admin_panel/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../routes/routes.dart';

class BrandRows extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    return DataRow2(cells: [
      DataCell(Row(
        children: [
          // ignore: prefer_const_constructors
          RoundedImage(
            imageUrl: TImages.adidasLogo,
            imageType: ImageType.asset,
            height: 50,
            width: 50,
            padding: TSizes.sm,
            borderRadius: TSizes.borderRadiusMd,
            backgroundColor: TColors.primaryBackground,
          ),
          const SizedBox(
            width: TSizes.spaceBtwItems,
          ),
          Expanded(
              child: Text(
            'Adidas',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(Get.context!)
                .textTheme
                .bodyLarge!
                .apply(color: TColors.primary),
          ))
        ],
      )),
      DataCell(Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.sm),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Wrap(
            spacing: TSizes.sm,
            direction: TDeviceUtils.isMobileScreen(Get.context!)
                ? Axis.vertical
                : Axis.horizontal,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    bottom: TDeviceUtils.isMobileScreen(Get.context!)
                        ? 0
                        : TSizes.xs),
                child: const Chip(
                  label: Text('Shoes'),
                  padding: EdgeInsets.all(TSizes.xs),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: TDeviceUtils.isMobileScreen(Get.context!)
                        ? 0
                        : TSizes.xs),
                child: const Chip(
                  label: Text('Tracksuits'),
                  padding: EdgeInsets.all(TSizes.xs),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: TDeviceUtils.isMobileScreen(Get.context!)
                        ? 0
                        : TSizes.xs),
                child: const Chip(
                  label: Text('Joggers'),
                  padding: EdgeInsets.all(TSizes.xs),
                ),
              ),
            ],
          ),
        ),
      ))
    , DataCell(Icon(Icons.favorite,color: TColors.primary,)),
      DataCell(Text(DateTime.now().toString()))
      ,DataCell(TableActionButtons(
        oneditressed: () => Get.toNamed(Routes.editBrand,arguments: ''),
        onDeletePressed: () {
          
        },
      ))
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => 20;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
