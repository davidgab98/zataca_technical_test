import 'package:zataca_technical_test/src/features/table/domain/model/table_item.dart';

extension EnumExtensionUtils on Enum {
  String getTableItemTypeName() {
    switch (this) {
      case TableItemType.consumption:
        return "Consumos";
      case TableItemType.powers:
        return "Potencias";
      case TableItemType.data:
        return "Datos";
      default:
        return "";
    }
  }
}
