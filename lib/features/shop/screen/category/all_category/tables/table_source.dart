import 'package:data_table_2/data_table_2.dart';
import 'package:ecommerce_admin_panel/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/category/all_category/tables/table_action_icon_button.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:ecommerce_admin_panel/utils/constants/enums.dart';
import 'package:ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryRows extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    // TODO: implement getRow
    return DataRow2(cells: [
      DataCell(Row(
        children: [
          const RoundedImage(
            width: 50,
            height: 50,
            padding: TSizes.sm,
            imageUrl: TImages.creditCard,
            imageType: ImageType.asset,
            borderRadius: TSizes.borderRadiusMd,
            backgroundColor: TColors.primaryBackground,
          ),
          const SizedBox(
            width: TSizes.spaceBtwItems,
          ),
          Expanded(
              child: Text(
            'Name',
            style: Theme.of(Get.context!)
                .textTheme
                .bodyLarge!
                .apply(color: TColors.primary),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ))
        ],
      )),
      const DataCell(Text('Parent')),
      const DataCell(Icon(
        Icons.favorite,
        color: TColors.primary,
      )),
      DataCell(Text(DateTime.now().toString())),
      DataCell(TableActionButtons(
        oneditressed: (() {
          Get.toNamed(
            Routes.editCategory,
            arguments: 'category',
          );
        }),
      )),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => 5;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
