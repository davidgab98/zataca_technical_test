import 'package:flutter/material.dart';
import 'package:zataca_technical_test/src/constants/test_table_items.dart';
import 'package:zataca_technical_test/src/utils/color_utils.dart';
import 'package:zataca_technical_test/src/utils/enum_extension_utils.dart';
import '../../../../constants/styles/styles.dart';

class MyDataTable extends StatelessWidget {
  const MyDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        dividerThickness: 1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppBorderRadius.br10),
          color: AppColors.background2,
        ),
        headingRowColor: MaterialStateColor.resolveWith(
          (states) => AppColors.primary,
        ),
        columns: <DataColumn>[
          DataColumn(
            label: Text(
              'Tipo',
              style: AppTextStyle.h2.copyWith(color: AppColors.background),
            ),
          ),
          DataColumn(
            label: Text(
              'Fecha',
              style: AppTextStyle.h2.copyWith(color: AppColors.background),
            ),
          ),
          DataColumn(
            label: Text(
              'Estado',
              style: AppTextStyle.h2.copyWith(color: AppColors.background),
            ),
          ),
        ],
        rows: <DataRow>[
          for (var item in kTestTableItems)
            DataRow(
              cells: <DataCell>[
                DataCell(
                  Text(
                    item.type.getTableItemTypeName(),
                    style: AppTextStyle.p1.copyWith(
                      color: AppColors.backgroundContrast2,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    item.date,
                    style: AppTextStyle.p2,
                  ),
                ),
                DataCell(
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: AppSizes.p14,
                      decoration: BoxDecoration(
                        color: ColorUtils.getColorFromTableItemState(
                          item.state,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
