import 'package:data_table_2/data_table_2.dart';
import 'package:ecommerce_admin_panel/common/widgets/datatable/paginated_datatable.dart';
import 'package:ecommerce_admin_panel/features/shop/screen/category/all_category/tables/table_source.dart';
import 'package:flutter/material.dart';

class CategoryTable extends StatelessWidget {
  const CategoryTable({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaginatedDataTable(
        minWidth: 700,
        columns: const [
          DataColumn2(label: Text('Category')),
          DataColumn2(label: Text('Parent Category')),
          DataColumn2(label: Text('Featured')),
          DataColumn2(label: Text('Data')),
          DataColumn2(label: Text('Action'), fixedWidth: 100),
        ],
        source: CategoryRows());
  }
}
