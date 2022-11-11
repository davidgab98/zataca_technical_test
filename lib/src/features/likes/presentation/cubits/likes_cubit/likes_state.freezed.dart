// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'likes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LikesState {
  Likes? get likes => throw _privateConstructorUsedError;
  LikesStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikesStateCopyWith<LikesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesStateCopyWith<$Res> {
  factory $LikesStateCopyWith(
          LikesState value, $Res Function(LikesState) then) =
      _$LikesStateCopyWithImpl<$Res, LikesState>;
  @useResult
  $Res call({Likes? likes, LikesStatus status});
}

/// @nodoc
class _$LikesStateCopyWithImpl<$Res, $Val extends LikesState>
    implements $LikesStateCopyWith<$Res> {
  _$LikesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as Likes?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LikesStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LikesStateCopyWith<$Res>
    implements $LikesStateCopyWith<$Res> {
  factory _$$_LikesStateCopyWith(
          _$_LikesState value, $Res Function(_$_LikesState) then) =
      __$$_LikesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Likes? likes, LikesStatus status});
}

/// @nodoc
class __$$_LikesStateCopyWithImpl<$Res>
    extends _$LikesStateCopyWithImpl<$Res, _$_LikesState>
    implements _$$_LikesStateCopyWith<$Res> {
  __$$_LikesStateCopyWithImpl(
      _$_LikesState _value, $Res Function(_$_LikesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = freezed,
    Object? status = null,
  }) {
    return _then(_$_LikesState(
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as Likes?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LikesStatus,
    ));
  }
}

/// @nodoc

class _$_LikesState implements _LikesState {
  const _$_LikesState({this.likes = null, this.status = LikesStatus.initial});

  @override
  @JsonKey()
  final Likes? likes;
  @override
  @JsonKey()
  final LikesStatus status;

  @override
  String toString() {
    return 'LikesState(likes: $likes, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LikesState &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, likes, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikesStateCopyWith<_$_LikesState> get copyWith =>
      __$$_LikesStateCopyWithImpl<_$_LikesState>(this, _$identity);
}

abstract class _LikesState implements LikesState {
  const factory _LikesState({final Likes? likes, final LikesStatus status}) =
      _$_LikesState;

  @override
  Likes? get likes;
  @override
  LikesStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_LikesStateCopyWith<_$_LikesState> get copyWith =>
      throw _privateConstructorUsedError;
}
