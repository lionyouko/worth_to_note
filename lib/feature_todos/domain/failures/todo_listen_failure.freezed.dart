// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_listen_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoListenFailure {
  String get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoListenFailureCopyWith<TodoListenFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListenFailureCopyWith<$Res> {
  factory $TodoListenFailureCopyWith(
          TodoListenFailure value, $Res Function(TodoListenFailure) then) =
      _$TodoListenFailureCopyWithImpl<$Res, TodoListenFailure>;
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class _$TodoListenFailureCopyWithImpl<$Res, $Val extends TodoListenFailure>
    implements $TodoListenFailureCopyWith<$Res> {
  _$TodoListenFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$TodoListenFailureImplCopyWith<$Res>
    implements $TodoListenFailureCopyWith<$Res> {
  factory _$$TodoListenFailureImplCopyWith(_$TodoListenFailureImpl value,
          $Res Function(_$TodoListenFailureImpl) then) =
      __$$TodoListenFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$$TodoListenFailureImplCopyWithImpl<$Res>
    extends _$TodoListenFailureCopyWithImpl<$Res, _$TodoListenFailureImpl>
    implements _$$TodoListenFailureImplCopyWith<$Res> {
  __$$TodoListenFailureImplCopyWithImpl(_$TodoListenFailureImpl _value,
      $Res Function(_$TodoListenFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_$TodoListenFailureImpl(
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TodoListenFailureImpl implements _TodoListenFailure {
  const _$TodoListenFailureImpl({
    this.failureMessage = TodoListenFailure.kTodoListenFailureMessage,
  });

  @override
  @JsonKey()
  final String failureMessage;

  @override
  String toString() {
    return 'TodoListenFailure(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListenFailureImpl &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListenFailureImplCopyWith<_$TodoListenFailureImpl> get copyWith =>
      __$$TodoListenFailureImplCopyWithImpl<_$TodoListenFailureImpl>(
          this, _$identity);
}

abstract class _TodoListenFailure implements TodoListenFailure {
  const factory _TodoListenFailure({final String failureMessage}) =
      _$TodoListenFailureImpl;

  @override
  String get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$TodoListenFailureImplCopyWith<_$TodoListenFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
