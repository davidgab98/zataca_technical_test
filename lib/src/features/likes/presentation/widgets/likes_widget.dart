import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zataca_technical_test/src/features/likes/presentation/cubits/likes_cubit/likes_cubit.dart';
import 'package:zataca_technical_test/src/features/likes/presentation/cubits/likes_cubit/likes_state.dart';
import '../../../../constants/styles/styles.dart';

class LikesWidget extends StatelessWidget {
  const LikesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocProvider(
          create: (BuildContext context) => LikesCubit()..getLikes(),
          child: const LikesMainInfo(),
        ),
        gapW10,
        Text(
          "Me gusta",
          style: AppTextStyle.p1.copyWith(
            color: AppColors.backgroundContrast2,
          ),
        ),
      ],
    );
  }
}

class LikesMainInfo extends StatelessWidget {
  const LikesMainInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LikesCubit, LikesState>(
      builder: (context, state) {
        switch (state.status) {
          case LikesStatus.initial:
          case LikesStatus.loading:
          case LikesStatus.error:
            return Row(
              children: const [
                LikeIconButton(disabled: true),
                gapW4,
                Text("0"),
              ],
            );
          case LikesStatus.loaded:
            return Row(
              children: [
                LikeIconButton(liked: state.likes!.liked),
                gapW4,
                Text(
                  state.likes!.numLikes.toString(),
                  style: AppTextStyle.h4,
                ),
              ],
            );
        }
      },
    );
  }
}

class LikeIconButton extends StatelessWidget {
  final bool liked;
  final bool disabled;

  const LikeIconButton({
    super.key,
    this.liked = false,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      onPressed:
          !disabled ? () => context.read<LikesCubit>().switchLike() : null,
      icon: liked
          ? const Icon(
              Icons.favorite,
              color: AppColors.danger,
            )
          : const Icon(
              Icons.favorite_border,
            ),
    );
  }
}
