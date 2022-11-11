import 'package:flutter/material.dart';
import '../constants/styles/styles.dart';

class OptionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const OptionItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppColors.backgroundContrast3,
      ),
      title: Text(
        title,
        style: AppTextStyle.h4.copyWith(
          color: AppColors.backgroundContrast3,
        ),
      ),
    );
  }
}
