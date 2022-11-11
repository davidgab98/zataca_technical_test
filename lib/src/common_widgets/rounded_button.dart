import 'package:flutter/material.dart';

import '../constants/styles/styles.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const RoundedButton({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.info,
        elevation: 0,
        minimumSize: const Size.fromHeight(40),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(AppBorderRadius.brMax),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: AppTextStyle.h4.copyWith(
          color: AppColors.background,
        ),
      ),
    );
  }
}
