import 'package:flutter/material.dart';

class DashBoardDesktopScreen extends StatelessWidget {
  const DashBoardDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: DataTable(
            columns: const [
              DataColumn(label: Text("Column1")),
              DataColumn(label: Text("Column2")),
              DataColumn(label: Text("Column3")),
              DataColumn(label: Text("Column4")),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Text('Cell1')),
                DataCell(Text('Cell2')),
                DataCell(Text('Cell3')),
                DataCell(Text('Cell4'))
              ]),
              DataRow(cells: [
                DataCell(Text('Cell1')),
                DataCell(Text('Cell2')),
                DataCell(Text('Cell3')),
                DataCell(Text('Cell4'))
              ]),
              DataRow(cells: [
                DataCell(Text('Cell1')),
                DataCell(Text('Cell2')),
                DataCell(Text('Cell3')),
                DataCell(Text('Cell4'))
              ]),
              DataRow(cells: [
                DataCell(Text('Cell1')),
                DataCell(Text('Cell2')),
                DataCell(Text('Cell3')),
                DataCell(Text('Cell4'))
              ])
            ],
          ),
        ),
      ),
    );
  }
}
