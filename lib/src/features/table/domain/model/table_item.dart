enum TableItemType { consumption, powers, data }

class TableItem {
  final TableItemType type;
  final String date;
  final bool state;

  const TableItem({
    required this.type,
    required this.date,
    required this.state,
  });
}
