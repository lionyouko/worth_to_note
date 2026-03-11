// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_todo_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddTodoFailure {
  String get failureMessage;

  /// Create a copy of AddTodoFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddTodoFailureCopyWith<AddTodoFailure> get copyWith =>
      _$AddTodoFailureCopyWithImpl<AddTodoFailure>(
          this as AddTodoFailure, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddTodoFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @override
  String toString() {
    return 'AddTodoFailure(failureMessage: $failureMessage)';
  }
}

/// @nodoc
abstract mixin class $AddTodoFailureCopyWith<$Res> {
  factory $AddTodoFailureCopyWith(
          AddTodoFailure value, $Res Function(AddTodoFailure) _then) =
      _$AddTodoFailureCopyWithImpl;
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class _$AddTodoFailureCopyWithImpl<$Res>
    implements $AddTodoFailureCopyWith<$Res> {
  _$AddTodoFailureCopyWithImpl(this._self, this._then);

  final AddTodoFailure _self;
  final $Res Function(AddTodoFailure) _then;

  /// Create a copy of AddTodoFailure
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

/// Adds pattern-matching-related methods to [AddTodoFailure].
extension AddTodoFailurePatterns on AddTodoFailure {
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
    TResult Function(_AddTodoFailure value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddTodoFailure() when $default != null:
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
    TResult Function(_AddTodoFailure value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddTodoFailure():
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
    TResult? Function(_AddTodoFailure value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddTodoFailure() when $default != null:
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
      case _AddTodoFailure() when $default != null:
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
      case _AddTodoFailure():
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
      case _AddTodoFailure() when $default != null:
        return $default(_that.failureMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AddTodoFailure implements AddTodoFailure {
  const _AddTodoFailure({this.failureMessage = kAddTodoFailureMessage});

  @override
  @JsonKey()
  final String failureMessage;

  /// Create a copy of AddTodoFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddTodoFailureCopyWith<_AddTodoFailure> get copyWith =>
      __$AddTodoFailureCopyWithImpl<_AddTodoFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddTodoFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @override
  String toString() {
    return 'AddTodoFailure(failureMessage: $failureMessage)';
  }
}

/// @nodoc
abstract mixin class _$AddTodoFailureCopyWith<$Res>
    implements $AddTodoFailureCopyWith<$Res> {
  factory _$AddTodoFailureCopyWith(
          _AddTodoFailure value, $Res Function(_AddTodoFailure) _then) =
      __$AddTodoFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$AddTodoFailureCopyWithImpl<$Res>
    implements _$AddTodoFailureCopyWith<$Res> {
  __$AddTodoFailureCopyWithImpl(this._self, this._then);

  final _AddTodoFailure _self;
  final $Res Function(_AddTodoFailure) _then;

  /// Create a copy of AddTodoFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_AddTodoFailure(
      failureMessage: null == failureMessage
          ? _self.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
