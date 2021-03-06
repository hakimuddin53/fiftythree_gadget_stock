import 'package:flutter/material.dart';

import 'drawer.dart';

class Stock extends StatefulWidget {
  const Stock({Key? key}) : super(key: key);

  @override
  _StockState createState() => _StockState();
}

class _StockState extends State<Stock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text("Stock"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          PaginatedDataTable(
            header: Text('Stock'),
            rowsPerPage: 10,
            columns: [
              DataColumn(label: Text('Header A')),
              DataColumn(label: Text('Header B')),
              DataColumn(label: Text('Header C')),
              DataColumn(label: Text('Header D')),
            ],
            source: _DataSource(context),
          ),
        ],
      ),
    );
  }
}
//
// class DataTableDemo extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Data Tables'),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(16),
//         children: [
//           PaginatedDataTable(
//             header: Text('Header Text'),
//             rowsPerPage: 4,
//             columns: [
//               DataColumn(label: Text('Header A')),
//               DataColumn(label: Text('Header B')),
//               DataColumn(label: Text('Header C')),
//               DataColumn(label: Text('Header D')),
//             ],
//             source: _DataSource(context),
//           ),
//         ],
//       ),
//     );
//   }
// }

class _Row {
  _Row(
    this.valueA,
    this.valueB,
    this.valueC,
    this.valueD,
  );

  final String valueA;
  final String valueB;
  final String valueC;
  final int valueD;

  bool selected = false;
}

class _DataSource extends DataTableSource {
  _DataSource(this.context) {
    _rows = <_Row>[
      _Row('Cell A1', 'CellB1', 'CellC1', 1),
      _Row('Cell A2', 'CellB2', 'CellC2', 2),
      _Row('Cell A3', 'CellB3', 'CellC3', 3),
      _Row('Cell A4', 'CellB4', 'CellC4', 4),
      _Row('Cell A4', 'CellB4', 'CellC4', 5),
      _Row('Cell A4', 'CellB4', 'CellC4', 6),
      _Row('Cell A4', 'CellB4', 'CellC4', 7),
    ];
  }

  final BuildContext context;
  late List<_Row> _rows;

  int _selectedCount = 0;

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    // if (index >= _rows.length) return null;
    final row = _rows[index];
    return DataRow.byIndex(
      index: index,
      selected: row.selected,
      onSelectChanged: (value) {
        if (row.selected != value && value != null) {
          _selectedCount += value ? 1 : -1;
          assert(_selectedCount >= 0);
          row.selected = value;
          notifyListeners();
        }
      },
      cells: [
        DataCell(Text(row.valueA)),
        DataCell(Text(row.valueB)),
        DataCell(Text(row.valueC)),
        DataCell(Text(row.valueD.toString())),
      ],
    );
  }

  @override
  int get rowCount => _rows.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;
}
