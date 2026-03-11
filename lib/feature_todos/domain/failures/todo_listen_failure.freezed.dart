// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_listen_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodoListenFailure {
  String get failureMessage;

  /// Create a copy of TodoListenFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TodoListenFailureCopyWith<TodoListenFailure> get copyWith =>
      _$TodoListenFailureCopyWithImpl<TodoListenFailure>(
          this as TodoListenFailure, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoListenFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @override
  String toString() {
    return 'TodoListenFailure(failureMessage: $failureMessage)';
  }
}

/// @nodoc
abstract mixin class $TodoListenFailureCopyWith<$Res> {
  factory $TodoListenFailureCopyWith(
          TodoListenFailure value, $Res Function(TodoListenFailure) _then) =
      _$TodoListenFailureCopyWithImpl;
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class _$TodoListenFailureCopyWithImpl<$Res>
    implements $TodoListenFailureCopyWith<$Res> {
  _$TodoListenFailureCopyWithImpl(this._self, this._then);

  final TodoListenFailure _self;
  final $Res Function(TodoListenFailure) _then;

  /// Create a copy of TodoListenFailure
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

/// Adds pattern-matching-related methods to [TodoListenFailure].
extension TodoListenFailurePatterns on TodoListenFailure {
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
    TResult Function(_TodoListenFailure value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TodoListenFailure() when $default != null:
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
    TResult Function(_TodoListenFailure value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TodoListenFailure():
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
    TResult? Function(_TodoListenFailure value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TodoListenFailure() when $default != null:
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
      case _TodoListenFailure() when $default != null:
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
      case _TodoListenFailure():
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
      case _TodoListenFailure() when $default != null:
        return $default(_that.failureMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TodoListenFailure implements TodoListenFailure {
  const _TodoListenFailure({this.failureMessage = kTodoListenFailureMessage});

  @override
  @JsonKey()
  final String failureMessage;

  /// Create a copy of TodoListenFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TodoListenFailureCopyWith<_TodoListenFailure> get copyWith =>
      __$TodoListenFailureCopyWithImpl<_TodoListenFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoListenFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @override
  String toString() {
    return 'TodoListenFailure(failureMessage: $failureMessage)';
  }
}

/// @nodoc
abstract mixin class _$TodoListenFailureCopyWith<$Res>
    implements $TodoListenFailureCopyWith<$Res> {
  factory _$TodoListenFailureCopyWith(
          _TodoListenFailure value, $Res Function(_TodoListenFailure) _then) =
      __$TodoListenFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$TodoListenFailureCopyWithImpl<$Res>
    implements _$TodoListenFailureCopyWith<$Res> {
  __$TodoListenFailureCopyWithImpl(this._self, this._then);

  final _TodoListenFailure _self;
  final $Res Function(_TodoListenFailure) _then;

  /// Create a copy of TodoListenFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_TodoListenFailure(
      failureMessage: null == failureMessage
          ? _self.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
