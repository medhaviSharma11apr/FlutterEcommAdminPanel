import 'package:data_table_2/data_table_2.dart';
import 'package:ecommerce_admin_panel/common/widgets/datatable/paginated_datatable.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/banner/all_banners/table/table_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BannerTable extends StatelessWidget {
  const BannerTable({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaginatedDataTable(
      minWidth: 700,
      tableHeight: 900,
      dataRowHeight: 110,
      columns: [
        DataColumn2(label: Text('Banner')),
        DataColumn2(label: Text('Redirect Screen')),
        DataColumn2(label: Text('Active')),
        DataColumn2(label: Text('Action', ), fixedWidth: 100),
      ], source: BannerRows(),

    );
  }
}
