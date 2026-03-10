// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_todo_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTodoFailure {
  String get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTodoFailureCopyWith<AddTodoFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTodoFailureCopyWith<$Res> {
  factory $AddTodoFailureCopyWith(
          AddTodoFailure value, $Res Function(AddTodoFailure) then) =
      _$AddTodoFailureCopyWithImpl<$Res, AddTodoFailure>;
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class _$AddTodoFailureCopyWithImpl<$Res, $Val extends AddTodoFailure>
    implements $AddTodoFailureCopyWith<$Res> {
  _$AddTodoFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$AddTodoFailureImplCopyWith<$Res>
    implements $AddTodoFailureCopyWith<$Res> {
  factory _$$AddTodoFailureImplCopyWith(_$AddTodoFailureImpl value,
          $Res Function(_$AddTodoFailureImpl) then) =
      __$$AddTodoFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$$AddTodoFailureImplCopyWithImpl<$Res>
    extends _$AddTodoFailureCopyWithImpl<$Res, _$AddTodoFailureImpl>
    implements _$$AddTodoFailureImplCopyWith<$Res> {
  __$$AddTodoFailureImplCopyWithImpl(
      _$AddTodoFailureImpl _value, $Res Function(_$AddTodoFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_$AddTodoFailureImpl(
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddTodoFailureImpl implements _AddTodoFailure {
  const _$AddTodoFailureImpl(
      {this.failureMessage = AddTodoFailure.kAddTodoFailureMessage});

  @override
  @JsonKey()
  final String failureMessage;

  @override
  String toString() {
    return 'AddTodoFailure(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTodoFailureImpl &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTodoFailureImplCopyWith<_$AddTodoFailureImpl> get copyWith =>
      __$$AddTodoFailureImplCopyWithImpl<_$AddTodoFailureImpl>(
          this, _$identity);
}

abstract class _AddTodoFailure implements AddTodoFailure {
  const factory _AddTodoFailure({final String failureMessage}) =
      _$AddTodoFailureImpl;

  @override
  String get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$AddTodoFailureImplCopyWith<_$AddTodoFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
