// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mouse_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MouseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double dx, double dy) moved,
    required TResult Function(double value) sensitivityUpdated,
    required TResult Function(String button) pressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double dx, double dy)? moved,
    TResult? Function(double value)? sensitivityUpdated,
    TResult? Function(String button)? pressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double dx, double dy)? moved,
    TResult Function(double value)? sensitivityUpdated,
    TResult Function(String button)? pressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovedEvent value) moved,
    required TResult Function(_SensitivityUpdatedEvent value)
        sensitivityUpdated,
    required TResult Function(_PressedEvent value) pressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovedEvent value)? moved,
    TResult? Function(_SensitivityUpdatedEvent value)? sensitivityUpdated,
    TResult? Function(_PressedEvent value)? pressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovedEvent value)? moved,
    TResult Function(_SensitivityUpdatedEvent value)? sensitivityUpdated,
    TResult Function(_PressedEvent value)? pressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MouseEventCopyWith<$Res> {
  factory $MouseEventCopyWith(
          MouseEvent value, $Res Function(MouseEvent) then) =
      _$MouseEventCopyWithImpl<$Res, MouseEvent>;
}

/// @nodoc
class _$MouseEventCopyWithImpl<$Res, $Val extends MouseEvent>
    implements $MouseEventCopyWith<$Res> {
  _$MouseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MovedEventImplCopyWith<$Res> {
  factory _$$MovedEventImplCopyWith(
          _$MovedEventImpl value, $Res Function(_$MovedEventImpl) then) =
      __$$MovedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double dx, double dy});
}

/// @nodoc
class __$$MovedEventImplCopyWithImpl<$Res>
    extends _$MouseEventCopyWithImpl<$Res, _$MovedEventImpl>
    implements _$$MovedEventImplCopyWith<$Res> {
  __$$MovedEventImplCopyWithImpl(
      _$MovedEventImpl _value, $Res Function(_$MovedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dx = null,
    Object? dy = null,
  }) {
    return _then(_$MovedEventImpl(
      dx: null == dx
          ? _value.dx
          : dx // ignore: cast_nullable_to_non_nullable
              as double,
      dy: null == dy
          ? _value.dy
          : dy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MovedEventImpl implements _MovedEvent {
  const _$MovedEventImpl({required this.dx, required this.dy});

  @override
  final double dx;
  @override
  final double dy;

  @override
  String toString() {
    return 'MouseEvent.moved(dx: $dx, dy: $dy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovedEventImpl &&
            (identical(other.dx, dx) || other.dx == dx) &&
            (identical(other.dy, dy) || other.dy == dy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dx, dy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovedEventImplCopyWith<_$MovedEventImpl> get copyWith =>
      __$$MovedEventImplCopyWithImpl<_$MovedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double dx, double dy) moved,
    required TResult Function(double value) sensitivityUpdated,
    required TResult Function(String button) pressed,
  }) {
    return moved(dx, dy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double dx, double dy)? moved,
    TResult? Function(double value)? sensitivityUpdated,
    TResult? Function(String button)? pressed,
  }) {
    return moved?.call(dx, dy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double dx, double dy)? moved,
    TResult Function(double value)? sensitivityUpdated,
    TResult Function(String button)? pressed,
    required TResult orElse(),
  }) {
    if (moved != null) {
      return moved(dx, dy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovedEvent value) moved,
    required TResult Function(_SensitivityUpdatedEvent value)
        sensitivityUpdated,
    required TResult Function(_PressedEvent value) pressed,
  }) {
    return moved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovedEvent value)? moved,
    TResult? Function(_SensitivityUpdatedEvent value)? sensitivityUpdated,
    TResult? Function(_PressedEvent value)? pressed,
  }) {
    return moved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovedEvent value)? moved,
    TResult Function(_SensitivityUpdatedEvent value)? sensitivityUpdated,
    TResult Function(_PressedEvent value)? pressed,
    required TResult orElse(),
  }) {
    if (moved != null) {
      return moved(this);
    }
    return orElse();
  }
}

abstract class _MovedEvent implements MouseEvent {
  const factory _MovedEvent(
      {required final double dx, required final double dy}) = _$MovedEventImpl;

  double get dx;
  double get dy;
  @JsonKey(ignore: true)
  _$$MovedEventImplCopyWith<_$MovedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SensitivityUpdatedEventImplCopyWith<$Res> {
  factory _$$SensitivityUpdatedEventImplCopyWith(
          _$SensitivityUpdatedEventImpl value,
          $Res Function(_$SensitivityUpdatedEventImpl) then) =
      __$$SensitivityUpdatedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$SensitivityUpdatedEventImplCopyWithImpl<$Res>
    extends _$MouseEventCopyWithImpl<$Res, _$SensitivityUpdatedEventImpl>
    implements _$$SensitivityUpdatedEventImplCopyWith<$Res> {
  __$$SensitivityUpdatedEventImplCopyWithImpl(
      _$SensitivityUpdatedEventImpl _value,
      $Res Function(_$SensitivityUpdatedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SensitivityUpdatedEventImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SensitivityUpdatedEventImpl implements _SensitivityUpdatedEvent {
  const _$SensitivityUpdatedEventImpl({required this.value});

  @override
  final double value;

  @override
  String toString() {
    return 'MouseEvent.sensitivityUpdated(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SensitivityUpdatedEventImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SensitivityUpdatedEventImplCopyWith<_$SensitivityUpdatedEventImpl>
      get copyWith => __$$SensitivityUpdatedEventImplCopyWithImpl<
          _$SensitivityUpdatedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double dx, double dy) moved,
    required TResult Function(double value) sensitivityUpdated,
    required TResult Function(String button) pressed,
  }) {
    return sensitivityUpdated(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double dx, double dy)? moved,
    TResult? Function(double value)? sensitivityUpdated,
    TResult? Function(String button)? pressed,
  }) {
    return sensitivityUpdated?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double dx, double dy)? moved,
    TResult Function(double value)? sensitivityUpdated,
    TResult Function(String button)? pressed,
    required TResult orElse(),
  }) {
    if (sensitivityUpdated != null) {
      return sensitivityUpdated(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovedEvent value) moved,
    required TResult Function(_SensitivityUpdatedEvent value)
        sensitivityUpdated,
    required TResult Function(_PressedEvent value) pressed,
  }) {
    return sensitivityUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovedEvent value)? moved,
    TResult? Function(_SensitivityUpdatedEvent value)? sensitivityUpdated,
    TResult? Function(_PressedEvent value)? pressed,
  }) {
    return sensitivityUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovedEvent value)? moved,
    TResult Function(_SensitivityUpdatedEvent value)? sensitivityUpdated,
    TResult Function(_PressedEvent value)? pressed,
    required TResult orElse(),
  }) {
    if (sensitivityUpdated != null) {
      return sensitivityUpdated(this);
    }
    return orElse();
  }
}

abstract class _SensitivityUpdatedEvent implements MouseEvent {
  const factory _SensitivityUpdatedEvent({required final double value}) =
      _$SensitivityUpdatedEventImpl;

  double get value;
  @JsonKey(ignore: true)
  _$$SensitivityUpdatedEventImplCopyWith<_$SensitivityUpdatedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PressedEventImplCopyWith<$Res> {
  factory _$$PressedEventImplCopyWith(
          _$PressedEventImpl value, $Res Function(_$PressedEventImpl) then) =
      __$$PressedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String button});
}

/// @nodoc
class __$$PressedEventImplCopyWithImpl<$Res>
    extends _$MouseEventCopyWithImpl<$Res, _$PressedEventImpl>
    implements _$$PressedEventImplCopyWith<$Res> {
  __$$PressedEventImplCopyWithImpl(
      _$PressedEventImpl _value, $Res Function(_$PressedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? button = null,
  }) {
    return _then(_$PressedEventImpl(
      button: null == button
          ? _value.button
          : button // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PressedEventImpl implements _PressedEvent {
  const _$PressedEventImpl({required this.button});

  @override
  final String button;

  @override
  String toString() {
    return 'MouseEvent.pressed(button: $button)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PressedEventImpl &&
            (identical(other.button, button) || other.button == button));
  }

  @override
  int get hashCode => Object.hash(runtimeType, button);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PressedEventImplCopyWith<_$PressedEventImpl> get copyWith =>
      __$$PressedEventImplCopyWithImpl<_$PressedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double dx, double dy) moved,
    required TResult Function(double value) sensitivityUpdated,
    required TResult Function(String button) pressed,
  }) {
    return pressed(button);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double dx, double dy)? moved,
    TResult? Function(double value)? sensitivityUpdated,
    TResult? Function(String button)? pressed,
  }) {
    return pressed?.call(button);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double dx, double dy)? moved,
    TResult Function(double value)? sensitivityUpdated,
    TResult Function(String button)? pressed,
    required TResult orElse(),
  }) {
    if (pressed != null) {
      return pressed(button);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovedEvent value) moved,
    required TResult Function(_SensitivityUpdatedEvent value)
        sensitivityUpdated,
    required TResult Function(_PressedEvent value) pressed,
  }) {
    return pressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovedEvent value)? moved,
    TResult? Function(_SensitivityUpdatedEvent value)? sensitivityUpdated,
    TResult? Function(_PressedEvent value)? pressed,
  }) {
    return pressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovedEvent value)? moved,
    TResult Function(_SensitivityUpdatedEvent value)? sensitivityUpdated,
    TResult Function(_PressedEvent value)? pressed,
    required TResult orElse(),
  }) {
    if (pressed != null) {
      return pressed(this);
    }
    return orElse();
  }
}

abstract class _PressedEvent implements MouseEvent {
  const factory _PressedEvent({required final String button}) =
      _$PressedEventImpl;

  String get button;
  @JsonKey(ignore: true)
  _$$PressedEventImplCopyWith<_$PressedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MouseState {
  double get sensitivity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MouseStateCopyWith<MouseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MouseStateCopyWith<$Res> {
  factory $MouseStateCopyWith(
          MouseState value, $Res Function(MouseState) then) =
      _$MouseStateCopyWithImpl<$Res, MouseState>;
  @useResult
  $Res call({double sensitivity});
}

/// @nodoc
class _$MouseStateCopyWithImpl<$Res, $Val extends MouseState>
    implements $MouseStateCopyWith<$Res> {
  _$MouseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensitivity = null,
  }) {
    return _then(_value.copyWith(
      sensitivity: null == sensitivity
          ? _value.sensitivity
          : sensitivity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MouseStateImplCopyWith<$Res>
    implements $MouseStateCopyWith<$Res> {
  factory _$$MouseStateImplCopyWith(
          _$MouseStateImpl value, $Res Function(_$MouseStateImpl) then) =
      __$$MouseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double sensitivity});
}

/// @nodoc
class __$$MouseStateImplCopyWithImpl<$Res>
    extends _$MouseStateCopyWithImpl<$Res, _$MouseStateImpl>
    implements _$$MouseStateImplCopyWith<$Res> {
  __$$MouseStateImplCopyWithImpl(
      _$MouseStateImpl _value, $Res Function(_$MouseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensitivity = null,
  }) {
    return _then(_$MouseStateImpl(
      sensitivity: null == sensitivity
          ? _value.sensitivity
          : sensitivity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MouseStateImpl implements _MouseState {
  const _$MouseStateImpl({this.sensitivity = 10});

  @override
  @JsonKey()
  final double sensitivity;

  @override
  String toString() {
    return 'MouseState(sensitivity: $sensitivity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MouseStateImpl &&
            (identical(other.sensitivity, sensitivity) ||
                other.sensitivity == sensitivity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sensitivity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MouseStateImplCopyWith<_$MouseStateImpl> get copyWith =>
      __$$MouseStateImplCopyWithImpl<_$MouseStateImpl>(this, _$identity);
}

abstract class _MouseState implements MouseState {
  const factory _MouseState({final double sensitivity}) = _$MouseStateImpl;

  @override
  double get sensitivity;
  @override
  @JsonKey(ignore: true)
  _$$MouseStateImplCopyWith<_$MouseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
