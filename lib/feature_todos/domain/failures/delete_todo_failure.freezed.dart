// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_todo_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteTodoFailure {
  String get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteTodoFailureCopyWith<DeleteTodoFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTodoFailureCopyWith<$Res> {
  factory $DeleteTodoFailureCopyWith(
          DeleteTodoFailure value, $Res Function(DeleteTodoFailure) then) =
      _$DeleteTodoFailureCopyWithImpl<$Res, DeleteTodoFailure>;
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class _$DeleteTodoFailureCopyWithImpl<$Res, $Val extends DeleteTodoFailure>
    implements $DeleteTodoFailureCopyWith<$Res> {
  _$DeleteTodoFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteTodoFailureImplCopyWith<$Res>
    implements $DeleteTodoFailureCopyWith<$Res> {
  factory _$$DeleteTodoFailureImplCopyWith(_$DeleteTodoFailureImpl value,
          $Res Function(_$DeleteTodoFailureImpl) then) =
      __$$DeleteTodoFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$$DeleteTodoFailureImplCopyWithImpl<$Res>
    extends _$DeleteTodoFailureCopyWithImpl<$Res, _$DeleteTodoFailureImpl>
    implements _$$DeleteTodoFailureImplCopyWith<$Res> {
  __$$DeleteTodoFailureImplCopyWithImpl(_$DeleteTodoFailureImpl _value,
      $Res Function(_$DeleteTodoFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_$DeleteTodoFailureImpl(
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteTodoFailureImpl implements _DeleteTodoFailure {
  const _$DeleteTodoFailureImpl(
      {this.failureMessage = DeleteTodoFailure.kDeleteTodoFailureMessage});

  @override
  @JsonKey()
  final String failureMessage;

  @override
  String toString() {
    return 'DeleteTodoFailure(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTodoFailureImpl &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTodoFailureImplCopyWith<_$DeleteTodoFailureImpl> get copyWith =>
      __$$DeleteTodoFailureImplCopyWithImpl<_$DeleteTodoFailureImpl>(
          this, _$identity);
}

abstract class _DeleteTodoFailure implements DeleteTodoFailure {
  const factory _DeleteTodoFailure({final String failureMessage}) =
      _$DeleteTodoFailureImpl;

  @override
  String get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$DeleteTodoFailureImplCopyWith<_$DeleteTodoFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
