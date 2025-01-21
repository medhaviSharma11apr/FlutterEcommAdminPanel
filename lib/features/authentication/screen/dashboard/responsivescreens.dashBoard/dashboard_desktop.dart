import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class DashBoardDesktopScreen extends StatelessWidget {
  const DashBoardDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: PaginatedDataTable2(
            initialFirstRowIndex: 1,
            columnSpacing: 12,
            minWidth: 700,
            dividerThickness: 0,
            horizontalMargin: 12,
            dataRowHeight: 56,
            columns: const [
              DataColumn2(label: Text("Column1")),
              DataColumn2(label: Text("Column2")),
              DataColumn2(label: Text("Column3")),
              DataColumn2(label: Text("Column4")),
            ],
            source: MyData(),
          ),
        ),
      ),
    );
  }
}

class MyData extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    return const DataRow(cells: [
      DataCell(Text('Hii')),
      DataCell(Text('Hii')),
      DataCell(Text('Hii')),
      DataCell(Text('Hii')),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => 36;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
