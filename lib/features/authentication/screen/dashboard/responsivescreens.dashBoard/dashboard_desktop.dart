import 'dart:developer';

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardDesktopScreen extends StatelessWidget {
  const DashBoardDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashBoardController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Obx((() => Theme(
                data: Theme.of(context).copyWith(
                    cardTheme: const CardTheme(
                  color: Colors.white,
                  elevation: 0,
                )),
                child: PaginatedDataTable2(
                  initialFirstRowIndex: 1,
                  columnSpacing: 12,
                  minWidth: 700,
                  rowsPerPage: 10,
                  dividerThickness: 0,
                  horizontalMargin: 12,
                  dataRowHeight: 56,
                  showCheckboxColumn: true,
                  columns: [
                    const DataColumn2(label: Text("Column1")),
                    DataColumn2(
                      label: const Text("Column2"),
                      onSort: (columnIndex, ascending) {
                        controller.sortById(columnIndex, ascending);
                      },
                    ),
                    const DataColumn2(label: Text("Column3")),
                    DataColumn2(
                      label: const Text("Column4"),
                      onSort: (columnIndex, ascending) {
                        controller.sortById(columnIndex, ascending);
                      },
                    ),
                  ],
                  source: MyData(),
                  // pagination
                  showFirstLastButtons: true,
                  onPageChanged: (value) {},
                  renderEmptyRowsInTheEnd: true,
                  onRowsPerPageChanged: (value) {},

                  // Sorting
                  sortAscending: controller.sortAscending.value,
                  sortArrowIcon: Icons.line_axis,
                  sortColumnIndex: controller.sortColumnIndex.value,
                
                ),
              ))),
        ),
      ),
    );
  }
}

class MyData extends DataTableSource {
  final dashboardcontroller = Get.put(DashBoardController());
  @override
  DataRow? getRow(int index) {
    final data = dashboardcontroller.datalist[index];
    return DataRow2(
        onTap: () {
          log("row $index is clicked");
          log("row $index is clicked${dashboardcontroller.selectedRows[index]}");
        },
        selected: dashboardcontroller.selectedRows[index],
        onSelectChanged: (value) {
          dashboardcontroller.selectedRows[index] = value ?? false;
          notifyListeners();
        },
        cells: [
          DataCell(Text(data['Column 1'] ?? '')),
          DataCell(Text(data['Column 2'] ?? '')),
          DataCell(Text(data['Column 3'] ?? '')),
          DataCell(Text(data['Column 4'] ?? '')),
        ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => dashboardcontroller.datalist.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}

class DashBoardController extends GetxController {
  var datalist = <Map<String, dynamic>>[].obs;
  RxList<bool> selectedRows =
      <bool>[].obs; // observable list to store selected rows

  RxInt sortColumnIndex =
      1.obs; // observable for tracking the index of column for sorting
  RxBool sortAscending = true
      .obs; // observable for tracking the sorting order (ascending or descending)
  @override
  void onInit() {
    // TODO: implement onInit
    fetchDummyData();
  }

  void sortById(
    int sortColumnIndex,
    bool ascending,
  ) {
    sortAscending.value = ascending;

    datalist.sort(((a, b) {
      if (ascending) {
        return datalist[0]['Column 1']
            .toString()
            .toLowerCase()
            .compareTo(datalist[0]['Column 1'].toString().toLowerCase());
      } else {
        return datalist[0]['Column 1']
            .toString()
            .toLowerCase()
            .compareTo(datalist[0]['Column 1'].toString().toLowerCase());
      }
    }));
    this.sortColumnIndex.value = sortColumnIndex;
  }

  void fetchDummyData() {
    selectedRows.assignAll(List.generate(
      36,
      (index) => false,
    )); // Initialize selected rows
    datalist.addAll(List.generate(
        36,
        (index) => {
              'Column 1': 'Data ${index + 1} -1',
              'Column 2': 'Data ${index + 1} -2',
              'Column 3': 'Data ${index + 1} -3',
              'Column 4': 'Data ${index + 1} -4',
            }));
  }
}
