import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zataca_technical_test/src/features/post_page/domain/model/post.dart';
part 'post_state.freezed.dart';

enum PostStatus {
  initial,
  loading,
  loaded,
  error;
}

@freezed
class PostState with _$PostState {
  const factory PostState({
    @Default([]) List<Post> posts,
    @Default(PostStatus.initial) PostStatus status,
  }) = _PostState;
}
