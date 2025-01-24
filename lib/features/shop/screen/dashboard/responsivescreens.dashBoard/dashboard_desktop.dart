import 'package:ecommerce_admin_panel/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/dashboard.controller/dashboard_controller.dart';
import '../tables/data_table.dart';
import '../widgets/dashboard_card.dart';
import '../widgets/order_status_graph.dart';
import '../widgets/weekly_sales.dart';

class DashBoardDesktopScreen extends StatelessWidget {
  const DashBoardDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashBoardController());
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(
          TSizes.defaultSpace,
        ), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(
              'Heading',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            // Cards

            Row(
              children: const [
                Expanded(
                  child: DashBoardCard(
                    status: 25,
                    title: 'Sales total',
                    subtitle: '\$345.0',
                  ),
                ),
                SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Expanded(
                  child: DashBoardCard(
                    status: 15,
                    title: 'Average Order Value',
                    subtitle: '\$45.0',
                  ),
                ),
                SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Expanded(
                  child: DashBoardCard(
                    status: 44,
                    title: 'Total Orders',
                    subtitle: '36',
                  ),
                ),
                SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Expanded(
                  child: DashBoardCard(
                    status: 2,
                    title: 'Visitor',
                    subtitle: '24345.0',
                  ),
                ),
                SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
              ],
            )

            // Graphs

            ,

            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      // Bar Graph
                      const WeeklySalesGraph(),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),
                      // Orders
                      TRoundedContainer(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Recent Orders',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const SizedBox(
                              height: TSizes.spaceBtwSections,
                            ),
                            const DashBoardOrderTable()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: TSizes.spaceBtwSections,
                ),
                // Pie Chart

                const Expanded(child: OrderstatusPieChart())
              ],
            )
          ],
        ),
      ),
    ));
  }
}

//  final controller = Get.put(DashBoardController());
// Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Center(
//           child: Column(
//             children: [
//               TextFormField(
//                 onChanged: (query) => controller.searchQuery(query),
//                 controller: controller.searchtextEditingController,
//                 decoration: const InputDecoration(
//                     hintText: 'Search',
//                     prefixIcon: Icon(
//                       Icons.search,
//                     )),
//               ),
//               const SizedBox(
//                 height: TSizes.spaceBtwSections,
//               ),
//               Obx((() {
//                 Visibility(
//                   visible: false,
//                   child: Text(controller.filtereddatalist.length.toString()),
//                 );
//                 return SizedBox(
//                   height: 600,
//                   child: Theme(
//                     data: Theme.of(context).copyWith(
//                         cardTheme: const CardTheme(
//                       color: Colors.white,
//                       elevation: 0,
//                     )),
//                     child: PaginatedDataTable2(
//                       initialFirstRowIndex: 1,
//                       columnSpacing: 12,
//                       minWidth: 700,
//                       rowsPerPage: 10,
//                       dividerThickness: 0,
//                       horizontalMargin: 12,
//                       dataRowHeight: 56,
//                       showCheckboxColumn: true,
//                       columns: [
//                         const DataColumn2(label: Text("Column1")),
//                         DataColumn2(
//                           label: const Text("Column2"),
//                           onSort: (columnIndex, ascending) {
//                             controller.sortById(columnIndex, ascending);
//                           },
//                         ),
//                         const DataColumn2(label: Text("Column3")),
//                         DataColumn2(
//                           label: const Text("Column4"),
//                           onSort: (columnIndex, ascending) {
//                             controller.sortById(columnIndex, ascending);
//                           },
//                         ),
//                       ],
//                       source: MyData(),
//                       // pagination
//                       showFirstLastButtons: true,
//                       onPageChanged: (value) {},
//                       renderEmptyRowsInTheEnd: true,
//                       onRowsPerPageChanged: (value) {},

//                       // Sorting
//                       sortAscending: controller.sortAscending.value,
//                       sortArrowIcon: Icons.line_axis,
//                       sortColumnIndex: controller.sortColumnIndex.value,
//                       // sortArrowBuilder:
//                     ),
//                   ),
//                 );
//               })),
//             ],
//           ),
//         ),
//       ),

// class MyData extends DataTableSource {
//   final dashboardcontroller = Get.put(DashBoardController());
//   @override
//   DataRow? getRow(int index) {
//     final data = dashboardcontroller.filtereddatalist[index];
//     return DataRow2(
//         onTap: () {
//           log("row $index is clicked");
//           log("row $index is clicked${dashboardcontroller.selectedRows[index]}");
//         },
//         selected: dashboardcontroller.selectedRows[index],
//         onSelectChanged: (value) {
//           dashboardcontroller.selectedRows[index] = value ?? false;
//           notifyListeners();
//         },
//         cells: [
//           DataCell(Text(data['Column 1'] ?? '')),
//           DataCell(Text(data['Column 2'] ?? '')),
//           DataCell(Text(data['Column 3'] ?? '')),
//           DataCell(Text(data['Column 4'] ?? '')),
//         ]);
//   }

//   @override
//   // TODO: implement isRowCountApproximate
//   bool get isRowCountApproximate => false;

//   @override
//   // TODO: implement rowCount
//   int get rowCount => dashboardcontroller.filtereddatalist.length;

//   @override
//   // TODO: implement selectedRowCount
//   int get selectedRowCount => 0;
// }

// class DashBoardController extends GetxController {
//   var filtereddatalist = <Map<String, dynamic>>[].obs;
//   var datalist = <Map<String, dynamic>>[].obs;
//   RxList<bool> selectedRows =
//       <bool>[].obs; // observable list to store selected rows

//   RxInt sortColumnIndex =
//       1.obs; // observable for tracking the index of column for sorting
//   RxBool sortAscending = true
//       .obs; // observable for tracking the sorting order (ascending or descending)

//   final searchtextEditingController =
//       TextEditingController(); // controller for handling search item
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     fetchDummyData();
//   }

//   void searchQuery(String query) {
//     filtereddatalist.assignAll(datalist
//         .where((item) => item['Column 1'].contains(query.toLowerCase())));
//   }

//   void sortById(
//     int sortColumnIndex,
//     bool ascending,
//   ) {
//     sortAscending.value = ascending;

//     filtereddatalist.sort(((a, b) {
//       if (ascending) {
//         return filtereddatalist[0]['Column 1']
//             .toString()
//             .toLowerCase()
//             .compareTo(
//                 filtereddatalist[0]['Column 1'].toString().toLowerCase());
//       } else {
//         return filtereddatalist[0]['Column 1']
//             .toString()
//             .toLowerCase()
//             .compareTo(
//                 filtereddatalist[0]['Column 1'].toString().toLowerCase());
//       }
//     }));
//     this.sortColumnIndex.value = sortColumnIndex;
//   }

//   void fetchDummyData() {
//     selectedRows.assignAll(List.generate(
//       36,
//       (index) => false,
//     )); // Initialize selected rows
//     datalist.addAll(List.generate(
//         36,
//         (index) => {
//               'Column 1': 'Data ${index + 1} -1',
//               'Column 2': 'Data ${index + 1} -2',
//               'Column 3': 'Data ${index + 1} -3',
//               'Column 4': 'Data ${index + 1} -4',
//             }));
//     filtereddatalist.addAll(List.generate(
//         36,
//         (index) => {
//               'Column 1': 'Data ${index + 1} -1',
//               'Column 2': 'Data ${index + 1} -2',
//               'Column 3': 'Data ${index + 1} -3',
//               'Column 4': 'Data ${index + 1} -4',
//             }));
//   }
// }
