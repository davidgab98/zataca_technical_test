import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zataca_technical_test/src/features/likes/domain/models/likes.dart';
import 'package:zataca_technical_test/src/features/likes/presentation/cubits/likes_cubit/likes_cubit.dart';
import 'package:zataca_technical_test/src/features/likes/presentation/cubits/likes_cubit/likes_state.dart';

void main() {
  group('LikesCubit', () {
    blocTest<LikesCubit, LikesState>(
      'when LikesCubit is created, state is emitted with LikesStatus.initial ',
      build: () => LikesCubit(),
      verify: (cubit) {
        expect(cubit.state.status, LikesStatus.initial);
      },
    );

    blocTest<LikesCubit, LikesState>(
      'when getLikes from Cubit is called and returns a LikesModel'
      'state is emitted with LikesStatus.loading and then LikesStatus.loaded with the returned model',
      build: () => LikesCubit(),
      act: (cubit) {
        cubit.getLikes();
      },
      verify: (cubit) {
        expect(cubit.state.status, LikesStatus.loaded);
      },
      expect: () => [
        isA<LikesState>().having(
          (state) => state,
          'LikesStatus loading is emitted',
          equals(
            const LikesState(status: LikesStatus.loading),
          ),
        ),
        isA<LikesState>().having(
          (state) => state,
          'LikesStatus loaded is emitted with the returned LikesModel',
          equals(
            const LikesState(
              status: LikesStatus.loaded,
              likes: Likes(liked: false, numLikes: 0),
            ),
          ),
        ),
      ],
    );
  });
}
