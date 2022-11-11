import 'package:flutter/material.dart';

import '../constants/styles/styles.dart';

class SectionFrame extends StatelessWidget {
  final String title;
  final String description;
  final Widget child;

  const SectionFrame({
    super.key,
    required this.title,
    required this.description,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.h1.copyWith(
            color: AppColors.primary,
          ),
        ),
        gapH10,
        Text(
          description,
          style: AppTextStyle.p1,
        ),
        gapH16,
        child,
      ],
    );
  }
}
