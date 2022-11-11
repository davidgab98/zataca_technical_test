import '../constants/styles/styles.dart';

class ColorUtils {
  static getColorFromTableItemState(bool state) {
    return state ? AppColors.success : AppColors.danger;
  }
}
