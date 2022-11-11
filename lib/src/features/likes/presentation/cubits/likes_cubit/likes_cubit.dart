import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zataca_technical_test/src/features/likes/domain/models/likes.dart';
import 'package:zataca_technical_test/src/features/likes/presentation/cubits/likes_cubit/likes_state.dart';

const Likes mockedLikesResponse = Likes(numLikes: 0, liked: false);

class LikesCubit extends Cubit<LikesState> {
  LikesCubit() : super(const LikesState());

  getLikes() {
    emit(state.copyWith(status: LikesStatus.loading));
    try {
      final response = mockedLikesResponse; // mocked response
      // If response were null an exception would be thrown from the repository
      emit(
        state.copyWith(
          likes: response,
          status: LikesStatus.loaded,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: LikesStatus.error,
        ),
      );
    }
  }

  switchLike() {
    // Here we would make a request to the api to notify our like and get the new information about liked and numLikes
    final Likes mockedResponse;
    if (state.likes!.liked) {
      mockedResponse = Likes(
        liked: false,
        numLikes: state.likes!.numLikes > 0 ? state.likes!.numLikes - 1 : 0,
      );
    } else {
      mockedResponse = Likes(
        liked: true,
        numLikes: state.likes!.numLikes + 1,
      );
    }

    emit(state.copyWith(likes: mockedResponse));
  }
}
