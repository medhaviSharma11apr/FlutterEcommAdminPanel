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

import '../../../../model/bannerModel.dart';

class BannerRows extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    return DataRow2(cells: [
      const DataCell(RoundedImage(
        width: 180,
        height: 100,
        padding: TSizes.sm,
        imageType: ImageType.asset,
        imageUrl: TImages.banner1,
        backgroundColor: TColors.primary,
        borderRadius: TSizes.borderRadiusMd,
      )),
      const DataCell(Text('Shop')),
      const DataCell(Icon(
        Icons.remove_red_eye,
        color: TColors.primary,
      )),
      DataCell(TableActionButtons(
        oneditressed: () => Get.toNamed(Routes.editBanner,
            arguments: BannerModel(
              imageUrl: '',
              targetScreen: '',
              active: false,
            )),
        onDeletePressed: () {},
        onViewPressed: () {},
      )),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => 10;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 1;
}
