import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zataca_technical_test/src/features/post_page/domain/repositories/post_repository.dart';
import 'package:zataca_technical_test/src/features/post_page/presentation/cubits/cubit/post_state.dart';

class PostCubit extends Cubit<PostState> {
  final PostRepository postRepository;

  PostCubit({required this.postRepository}) : super(const PostState());

  Future<void> getPosts() async {
    emit(state.copyWith(status: PostStatus.loading));
    try {
      final response = await postRepository.fetchPosts();
      emit(
        state.copyWith(
          posts: response,
          status: PostStatus.loaded,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: PostStatus.error,
        ),
      );
    }
  }
}
