// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_todo_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteTodoFailure {
  String get failureMessage;

  /// Create a copy of DeleteTodoFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteTodoFailureCopyWith<DeleteTodoFailure> get copyWith =>
      _$DeleteTodoFailureCopyWithImpl<DeleteTodoFailure>(
          this as DeleteTodoFailure, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteTodoFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @override
  String toString() {
    return 'DeleteTodoFailure(failureMessage: $failureMessage)';
  }
}

/// @nodoc
abstract mixin class $DeleteTodoFailureCopyWith<$Res> {
  factory $DeleteTodoFailureCopyWith(
          DeleteTodoFailure value, $Res Function(DeleteTodoFailure) _then) =
      _$DeleteTodoFailureCopyWithImpl;
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class _$DeleteTodoFailureCopyWithImpl<$Res>
    implements $DeleteTodoFailureCopyWith<$Res> {
  _$DeleteTodoFailureCopyWithImpl(this._self, this._then);

  final DeleteTodoFailure _self;
  final $Res Function(DeleteTodoFailure) _then;

  /// Create a copy of DeleteTodoFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_self.copyWith(
      failureMessage: null == failureMessage
          ? _self.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [DeleteTodoFailure].
extension DeleteTodoFailurePatterns on DeleteTodoFailure {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DeleteTodoFailure value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeleteTodoFailure() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DeleteTodoFailure value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeleteTodoFailure():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DeleteTodoFailure value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeleteTodoFailure() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String failureMessage)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeleteTodoFailure() when $default != null:
        return $default(_that.failureMessage);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String failureMessage) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeleteTodoFailure():
        return $default(_that.failureMessage);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String failureMessage)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeleteTodoFailure() when $default != null:
        return $default(_that.failureMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DeleteTodoFailure implements DeleteTodoFailure {
  const _DeleteTodoFailure({this.failureMessage = kDeleteTodoFailureMessage});

  @override
  @JsonKey()
  final String failureMessage;

  /// Create a copy of DeleteTodoFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeleteTodoFailureCopyWith<_DeleteTodoFailure> get copyWith =>
      __$DeleteTodoFailureCopyWithImpl<_DeleteTodoFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteTodoFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @override
  String toString() {
    return 'DeleteTodoFailure(failureMessage: $failureMessage)';
  }
}

/// @nodoc
abstract mixin class _$DeleteTodoFailureCopyWith<$Res>
    implements $DeleteTodoFailureCopyWith<$Res> {
  factory _$DeleteTodoFailureCopyWith(
          _DeleteTodoFailure value, $Res Function(_DeleteTodoFailure) _then) =
      __$DeleteTodoFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$DeleteTodoFailureCopyWithImpl<$Res>
    implements _$DeleteTodoFailureCopyWith<$Res> {
  __$DeleteTodoFailureCopyWithImpl(this._self, this._then);

  final _DeleteTodoFailure _self;
  final $Res Function(_DeleteTodoFailure) _then;

  /// Create a copy of DeleteTodoFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_DeleteTodoFailure(
      failureMessage: null == failureMessage
          ? _self.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
