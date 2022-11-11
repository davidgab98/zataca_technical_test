import 'package:flutter/material.dart';
import 'package:zataca_technical_test/src/features/post_page/domain/model/post.dart';
import '../../../../constants/styles/styles.dart';

class PostItem extends StatelessWidget {
  final Post post;
  const PostItem({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gapH16,
        Text(
          '${post.id} ${post.title}',
          style: AppTextStyle.h2.copyWith(color: AppColors.backgroundContrast),
        ),
        gapH8,
        Text(
          post.body,
          style: AppTextStyle.p1.copyWith(color: AppColors.backgroundContrast),
        ),
      ],
    );
  }
}
