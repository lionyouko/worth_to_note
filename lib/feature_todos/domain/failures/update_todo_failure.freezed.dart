// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_todo_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateTodoFailure {
  String get failureMessage;

  /// Create a copy of UpdateTodoFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateTodoFailureCopyWith<UpdateTodoFailure> get copyWith =>
      _$UpdateTodoFailureCopyWithImpl<UpdateTodoFailure>(
          this as UpdateTodoFailure, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateTodoFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @override
  String toString() {
    return 'UpdateTodoFailure(failureMessage: $failureMessage)';
  }
}

/// @nodoc
abstract mixin class $UpdateTodoFailureCopyWith<$Res> {
  factory $UpdateTodoFailureCopyWith(
          UpdateTodoFailure value, $Res Function(UpdateTodoFailure) _then) =
      _$UpdateTodoFailureCopyWithImpl;
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class _$UpdateTodoFailureCopyWithImpl<$Res>
    implements $UpdateTodoFailureCopyWith<$Res> {
  _$UpdateTodoFailureCopyWithImpl(this._self, this._then);

  final UpdateTodoFailure _self;
  final $Res Function(UpdateTodoFailure) _then;

  /// Create a copy of UpdateTodoFailure
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

/// Adds pattern-matching-related methods to [UpdateTodoFailure].
extension UpdateTodoFailurePatterns on UpdateTodoFailure {
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
    TResult Function(_UpdateTodoFailure value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateTodoFailure() when $default != null:
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
    TResult Function(_UpdateTodoFailure value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateTodoFailure():
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
    TResult? Function(_UpdateTodoFailure value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateTodoFailure() when $default != null:
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
      case _UpdateTodoFailure() when $default != null:
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
      case _UpdateTodoFailure():
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
      case _UpdateTodoFailure() when $default != null:
        return $default(_that.failureMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UpdateTodoFailure implements UpdateTodoFailure {
  const _UpdateTodoFailure({this.failureMessage = kUpdateTodoFailureMessage});

  @override
  @JsonKey()
  final String failureMessage;

  /// Create a copy of UpdateTodoFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateTodoFailureCopyWith<_UpdateTodoFailure> get copyWith =>
      __$UpdateTodoFailureCopyWithImpl<_UpdateTodoFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateTodoFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @override
  String toString() {
    return 'UpdateTodoFailure(failureMessage: $failureMessage)';
  }
}

/// @nodoc
abstract mixin class _$UpdateTodoFailureCopyWith<$Res>
    implements $UpdateTodoFailureCopyWith<$Res> {
  factory _$UpdateTodoFailureCopyWith(
          _UpdateTodoFailure value, $Res Function(_UpdateTodoFailure) _then) =
      __$UpdateTodoFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$UpdateTodoFailureCopyWithImpl<$Res>
    implements _$UpdateTodoFailureCopyWith<$Res> {
  __$UpdateTodoFailureCopyWithImpl(this._self, this._then);

  final _UpdateTodoFailure _self;
  final $Res Function(_UpdateTodoFailure) _then;

  /// Create a copy of UpdateTodoFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_UpdateTodoFailure(
      failureMessage: null == failureMessage
          ? _self.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
