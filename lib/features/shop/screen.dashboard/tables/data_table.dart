import 'package:data_table_2/data_table_2.dart';
import 'package:ecommerce_admin_panel/features/shop/screen.dashboard/tables/table_source.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/datatable/paginated_datatable.dart';

class DashBoardOrderTable extends StatelessWidget {
  const DashBoardOrderTable({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaginatedDataTable(
        // dataRowHeight: TSizes.xs * 1.2,
        minWidth: 700,
        tableHeight: 500,
        columns: const [
          DataColumn2(label: Text('Order Id ')),
          DataColumn2(label: Text('Date')),
          DataColumn2(label: Text('Item')),
          DataColumn2(label: Text('Status')),
          DataColumn2(label: Text('Amount')),
          // DataColumn2(label: Text('Amount')),
        ],
        source: TableSource());
  }
}
