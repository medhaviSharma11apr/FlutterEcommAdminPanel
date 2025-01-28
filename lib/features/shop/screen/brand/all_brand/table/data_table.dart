import 'package:data_table_2/data_table_2.dart';
import 'package:ecommerce_admin_panel/common/widgets/datatable/paginated_datatable.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/brand/all_brand/table/table_source.dart';
import 'package:ecommerce_admin_panel/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrandTable extends StatelessWidget {
  const BrandTable({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaginatedDataTable(
        minWidth: 700,
        tableHeight: 760,
        dataRowHeight: 64,
        columns: [
          DataColumn2(
              label: const Text('Brand'),
              fixedWidth:
                  TDeviceUtils.isMobileScreen(Get.context!) ? null : 200),
          const DataColumn2(
            label: Text('Categories'),
          ),
          DataColumn2(
              label: const Text('Featured'),
              fixedWidth:
                  TDeviceUtils.isMobileScreen(Get.context!) ? null : 100),
          DataColumn2(
              label: const Text('Date'),
              fixedWidth:
                  TDeviceUtils.isMobileScreen(Get.context!) ? null : 200),
          DataColumn2(
              label: const Text('Action'),
              fixedWidth:
                  TDeviceUtils.isMobileScreen(Get.context!) ? null : 100),
        ],
        source: BrandRows());
  }
}
