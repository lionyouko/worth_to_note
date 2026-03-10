// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_todo_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateTodoFailure {
  String get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateTodoFailureCopyWith<UpdateTodoFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTodoFailureCopyWith<$Res> {
  factory $UpdateTodoFailureCopyWith(
          UpdateTodoFailure value, $Res Function(UpdateTodoFailure) then) =
      _$UpdateTodoFailureCopyWithImpl<$Res, UpdateTodoFailure>;
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class _$UpdateTodoFailureCopyWithImpl<$Res, $Val extends UpdateTodoFailure>
    implements $UpdateTodoFailureCopyWith<$Res> {
  _$UpdateTodoFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_value.copyWith(
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTodoFailureImplCopyWith<$Res>
    implements $UpdateTodoFailureCopyWith<$Res> {
  factory _$$UpdateTodoFailureImplCopyWith(_$UpdateTodoFailureImpl value,
          $Res Function(_$UpdateTodoFailureImpl) then) =
      __$$UpdateTodoFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$$UpdateTodoFailureImplCopyWithImpl<$Res>
    extends _$UpdateTodoFailureCopyWithImpl<$Res, _$UpdateTodoFailureImpl>
    implements _$$UpdateTodoFailureImplCopyWith<$Res> {
  __$$UpdateTodoFailureImplCopyWithImpl(_$UpdateTodoFailureImpl _value,
      $Res Function(_$UpdateTodoFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_$UpdateTodoFailureImpl(
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateTodoFailureImpl implements _UpdateTodoFailure {
  const _$UpdateTodoFailureImpl({
    this.failureMessage = UpdateTodoFailure.kUpdateTodoFailureMessage,
  });

  @override
  @JsonKey()
  final String failureMessage;

  @override
  String toString() {
    return 'UpdateTodoFailure(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTodoFailureImpl &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTodoFailureImplCopyWith<_$UpdateTodoFailureImpl> get copyWith =>
      __$$UpdateTodoFailureImplCopyWithImpl<_$UpdateTodoFailureImpl>(
          this, _$identity);
}

abstract class _UpdateTodoFailure implements UpdateTodoFailure {
  const factory _UpdateTodoFailure({final String failureMessage}) =
      _$UpdateTodoFailureImpl;

  @override
  String get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTodoFailureImplCopyWith<_$UpdateTodoFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
