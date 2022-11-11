import 'package:flutter/material.dart';
import 'package:zataca_technical_test/src/common_widgets/option_item.dart';
import '../styles/styles.dart';

class MyModals {
  static void showSettingOptions(BuildContext parentContext) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppBorderRadius.br20),
          topRight: Radius.circular(AppBorderRadius.br20),
        ),
      ),
      context: parentContext,
      backgroundColor: AppColors.background,
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: AppSizes.p46,
              bottom: AppSizes.p10,
            ),
            child: Wrap(
              children: const [
                OptionItem(
                  icon: Icons.folder,
                  title: "Opción 1",
                ),
                OptionItem(
                  icon: Icons.exit_to_app,
                  title: "Opción 2",
                ),
                OptionItem(
                  icon: Icons.do_not_disturb,
                  title: "Opción 3",
                ),
                OptionItem(
                  icon: Icons.dangerous,
                  title: "Opción 4",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
