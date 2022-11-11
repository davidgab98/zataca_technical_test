import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zataca_technical_test/src/features/likes/domain/models/likes.dart';
part 'likes_state.freezed.dart';

enum LikesStatus {
  initial,
  loading,
  loaded,
  error;
}

@freezed
class LikesState with _$LikesState {
  const factory LikesState({
    @Default(null) Likes? likes,
    @Default(LikesStatus.initial) LikesStatus status,
  }) = _LikesState;
}
