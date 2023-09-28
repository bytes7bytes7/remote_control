// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signal_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) addressUpdated,
    required TResult Function(String key) keyPressed,
    required TResult Function(List<String> keys) multipleKeysPressed,
    required TResult Function(double dx, double dy) mouseMoved,
    required TResult Function(String button) mousePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address)? addressUpdated,
    TResult? Function(String key)? keyPressed,
    TResult? Function(List<String> keys)? multipleKeysPressed,
    TResult? Function(double dx, double dy)? mouseMoved,
    TResult? Function(String button)? mousePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? addressUpdated,
    TResult Function(String key)? keyPressed,
    TResult Function(List<String> keys)? multipleKeysPressed,
    TResult Function(double dx, double dy)? mouseMoved,
    TResult Function(String button)? mousePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressUpdatedEvent value) addressUpdated,
    required TResult Function(_KeyPressedEvent value) keyPressed,
    required TResult Function(_MultipleKeysPressedEvent value)
        multipleKeysPressed,
    required TResult Function(_MouseMovedEvent value) mouseMoved,
    required TResult Function(_MousePressedEvent value) mousePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult? Function(_KeyPressedEvent value)? keyPressed,
    TResult? Function(_MultipleKeysPressedEvent value)? multipleKeysPressed,
    TResult? Function(_MouseMovedEvent value)? mouseMoved,
    TResult? Function(_MousePressedEvent value)? mousePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult Function(_KeyPressedEvent value)? keyPressed,
    TResult Function(_MultipleKeysPressedEvent value)? multipleKeysPressed,
    TResult Function(_MouseMovedEvent value)? mouseMoved,
    TResult Function(_MousePressedEvent value)? mousePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignalEventCopyWith<$Res> {
  factory $SignalEventCopyWith(
          SignalEvent value, $Res Function(SignalEvent) then) =
      _$SignalEventCopyWithImpl<$Res, SignalEvent>;
}

/// @nodoc
class _$SignalEventCopyWithImpl<$Res, $Val extends SignalEvent>
    implements $SignalEventCopyWith<$Res> {
  _$SignalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddressUpdatedEventImplCopyWith<$Res> {
  factory _$$AddressUpdatedEventImplCopyWith(_$AddressUpdatedEventImpl value,
          $Res Function(_$AddressUpdatedEventImpl) then) =
      __$$AddressUpdatedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$AddressUpdatedEventImplCopyWithImpl<$Res>
    extends _$SignalEventCopyWithImpl<$Res, _$AddressUpdatedEventImpl>
    implements _$$AddressUpdatedEventImplCopyWith<$Res> {
  __$$AddressUpdatedEventImplCopyWithImpl(_$AddressUpdatedEventImpl _value,
      $Res Function(_$AddressUpdatedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$AddressUpdatedEventImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddressUpdatedEventImpl implements _AddressUpdatedEvent {
  const _$AddressUpdatedEventImpl({required this.address});

  @override
  final String address;

  @override
  String toString() {
    return 'SignalEvent.addressUpdated(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressUpdatedEventImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressUpdatedEventImplCopyWith<_$AddressUpdatedEventImpl> get copyWith =>
      __$$AddressUpdatedEventImplCopyWithImpl<_$AddressUpdatedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) addressUpdated,
    required TResult Function(String key) keyPressed,
    required TResult Function(List<String> keys) multipleKeysPressed,
    required TResult Function(double dx, double dy) mouseMoved,
    required TResult Function(String button) mousePressed,
  }) {
    return addressUpdated(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address)? addressUpdated,
    TResult? Function(String key)? keyPressed,
    TResult? Function(List<String> keys)? multipleKeysPressed,
    TResult? Function(double dx, double dy)? mouseMoved,
    TResult? Function(String button)? mousePressed,
  }) {
    return addressUpdated?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? addressUpdated,
    TResult Function(String key)? keyPressed,
    TResult Function(List<String> keys)? multipleKeysPressed,
    TResult Function(double dx, double dy)? mouseMoved,
    TResult Function(String button)? mousePressed,
    required TResult orElse(),
  }) {
    if (addressUpdated != null) {
      return addressUpdated(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressUpdatedEvent value) addressUpdated,
    required TResult Function(_KeyPressedEvent value) keyPressed,
    required TResult Function(_MultipleKeysPressedEvent value)
        multipleKeysPressed,
    required TResult Function(_MouseMovedEvent value) mouseMoved,
    required TResult Function(_MousePressedEvent value) mousePressed,
  }) {
    return addressUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult? Function(_KeyPressedEvent value)? keyPressed,
    TResult? Function(_MultipleKeysPressedEvent value)? multipleKeysPressed,
    TResult? Function(_MouseMovedEvent value)? mouseMoved,
    TResult? Function(_MousePressedEvent value)? mousePressed,
  }) {
    return addressUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult Function(_KeyPressedEvent value)? keyPressed,
    TResult Function(_MultipleKeysPressedEvent value)? multipleKeysPressed,
    TResult Function(_MouseMovedEvent value)? mouseMoved,
    TResult Function(_MousePressedEvent value)? mousePressed,
    required TResult orElse(),
  }) {
    if (addressUpdated != null) {
      return addressUpdated(this);
    }
    return orElse();
  }
}

abstract class _AddressUpdatedEvent implements SignalEvent {
  const factory _AddressUpdatedEvent({required final String address}) =
      _$AddressUpdatedEventImpl;

  String get address;
  @JsonKey(ignore: true)
  _$$AddressUpdatedEventImplCopyWith<_$AddressUpdatedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KeyPressedEventImplCopyWith<$Res> {
  factory _$$KeyPressedEventImplCopyWith(_$KeyPressedEventImpl value,
          $Res Function(_$KeyPressedEventImpl) then) =
      __$$KeyPressedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$KeyPressedEventImplCopyWithImpl<$Res>
    extends _$SignalEventCopyWithImpl<$Res, _$KeyPressedEventImpl>
    implements _$$KeyPressedEventImplCopyWith<$Res> {
  __$$KeyPressedEventImplCopyWithImpl(
      _$KeyPressedEventImpl _value, $Res Function(_$KeyPressedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$KeyPressedEventImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KeyPressedEventImpl implements _KeyPressedEvent {
  const _$KeyPressedEventImpl({required this.key});

  @override
  final String key;

  @override
  String toString() {
    return 'SignalEvent.keyPressed(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyPressedEventImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyPressedEventImplCopyWith<_$KeyPressedEventImpl> get copyWith =>
      __$$KeyPressedEventImplCopyWithImpl<_$KeyPressedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) addressUpdated,
    required TResult Function(String key) keyPressed,
    required TResult Function(List<String> keys) multipleKeysPressed,
    required TResult Function(double dx, double dy) mouseMoved,
    required TResult Function(String button) mousePressed,
  }) {
    return keyPressed(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address)? addressUpdated,
    TResult? Function(String key)? keyPressed,
    TResult? Function(List<String> keys)? multipleKeysPressed,
    TResult? Function(double dx, double dy)? mouseMoved,
    TResult? Function(String button)? mousePressed,
  }) {
    return keyPressed?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? addressUpdated,
    TResult Function(String key)? keyPressed,
    TResult Function(List<String> keys)? multipleKeysPressed,
    TResult Function(double dx, double dy)? mouseMoved,
    TResult Function(String button)? mousePressed,
    required TResult orElse(),
  }) {
    if (keyPressed != null) {
      return keyPressed(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressUpdatedEvent value) addressUpdated,
    required TResult Function(_KeyPressedEvent value) keyPressed,
    required TResult Function(_MultipleKeysPressedEvent value)
        multipleKeysPressed,
    required TResult Function(_MouseMovedEvent value) mouseMoved,
    required TResult Function(_MousePressedEvent value) mousePressed,
  }) {
    return keyPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult? Function(_KeyPressedEvent value)? keyPressed,
    TResult? Function(_MultipleKeysPressedEvent value)? multipleKeysPressed,
    TResult? Function(_MouseMovedEvent value)? mouseMoved,
    TResult? Function(_MousePressedEvent value)? mousePressed,
  }) {
    return keyPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult Function(_KeyPressedEvent value)? keyPressed,
    TResult Function(_MultipleKeysPressedEvent value)? multipleKeysPressed,
    TResult Function(_MouseMovedEvent value)? mouseMoved,
    TResult Function(_MousePressedEvent value)? mousePressed,
    required TResult orElse(),
  }) {
    if (keyPressed != null) {
      return keyPressed(this);
    }
    return orElse();
  }
}

abstract class _KeyPressedEvent implements SignalEvent {
  const factory _KeyPressedEvent({required final String key}) =
      _$KeyPressedEventImpl;

  String get key;
  @JsonKey(ignore: true)
  _$$KeyPressedEventImplCopyWith<_$KeyPressedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultipleKeysPressedEventImplCopyWith<$Res> {
  factory _$$MultipleKeysPressedEventImplCopyWith(
          _$MultipleKeysPressedEventImpl value,
          $Res Function(_$MultipleKeysPressedEventImpl) then) =
      __$$MultipleKeysPressedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> keys});
}

/// @nodoc
class __$$MultipleKeysPressedEventImplCopyWithImpl<$Res>
    extends _$SignalEventCopyWithImpl<$Res, _$MultipleKeysPressedEventImpl>
    implements _$$MultipleKeysPressedEventImplCopyWith<$Res> {
  __$$MultipleKeysPressedEventImplCopyWithImpl(
      _$MultipleKeysPressedEventImpl _value,
      $Res Function(_$MultipleKeysPressedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keys = null,
  }) {
    return _then(_$MultipleKeysPressedEventImpl(
      keys: null == keys
          ? _value._keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$MultipleKeysPressedEventImpl implements _MultipleKeysPressedEvent {
  const _$MultipleKeysPressedEventImpl({required final List<String> keys})
      : _keys = keys;

  final List<String> _keys;
  @override
  List<String> get keys {
    if (_keys is EqualUnmodifiableListView) return _keys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keys);
  }

  @override
  String toString() {
    return 'SignalEvent.multipleKeysPressed(keys: $keys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultipleKeysPressedEventImpl &&
            const DeepCollectionEquality().equals(other._keys, _keys));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_keys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultipleKeysPressedEventImplCopyWith<_$MultipleKeysPressedEventImpl>
      get copyWith => __$$MultipleKeysPressedEventImplCopyWithImpl<
          _$MultipleKeysPressedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) addressUpdated,
    required TResult Function(String key) keyPressed,
    required TResult Function(List<String> keys) multipleKeysPressed,
    required TResult Function(double dx, double dy) mouseMoved,
    required TResult Function(String button) mousePressed,
  }) {
    return multipleKeysPressed(keys);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address)? addressUpdated,
    TResult? Function(String key)? keyPressed,
    TResult? Function(List<String> keys)? multipleKeysPressed,
    TResult? Function(double dx, double dy)? mouseMoved,
    TResult? Function(String button)? mousePressed,
  }) {
    return multipleKeysPressed?.call(keys);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? addressUpdated,
    TResult Function(String key)? keyPressed,
    TResult Function(List<String> keys)? multipleKeysPressed,
    TResult Function(double dx, double dy)? mouseMoved,
    TResult Function(String button)? mousePressed,
    required TResult orElse(),
  }) {
    if (multipleKeysPressed != null) {
      return multipleKeysPressed(keys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressUpdatedEvent value) addressUpdated,
    required TResult Function(_KeyPressedEvent value) keyPressed,
    required TResult Function(_MultipleKeysPressedEvent value)
        multipleKeysPressed,
    required TResult Function(_MouseMovedEvent value) mouseMoved,
    required TResult Function(_MousePressedEvent value) mousePressed,
  }) {
    return multipleKeysPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult? Function(_KeyPressedEvent value)? keyPressed,
    TResult? Function(_MultipleKeysPressedEvent value)? multipleKeysPressed,
    TResult? Function(_MouseMovedEvent value)? mouseMoved,
    TResult? Function(_MousePressedEvent value)? mousePressed,
  }) {
    return multipleKeysPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult Function(_KeyPressedEvent value)? keyPressed,
    TResult Function(_MultipleKeysPressedEvent value)? multipleKeysPressed,
    TResult Function(_MouseMovedEvent value)? mouseMoved,
    TResult Function(_MousePressedEvent value)? mousePressed,
    required TResult orElse(),
  }) {
    if (multipleKeysPressed != null) {
      return multipleKeysPressed(this);
    }
    return orElse();
  }
}

abstract class _MultipleKeysPressedEvent implements SignalEvent {
  const factory _MultipleKeysPressedEvent({required final List<String> keys}) =
      _$MultipleKeysPressedEventImpl;

  List<String> get keys;
  @JsonKey(ignore: true)
  _$$MultipleKeysPressedEventImplCopyWith<_$MultipleKeysPressedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MouseMovedEventImplCopyWith<$Res> {
  factory _$$MouseMovedEventImplCopyWith(_$MouseMovedEventImpl value,
          $Res Function(_$MouseMovedEventImpl) then) =
      __$$MouseMovedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double dx, double dy});
}

/// @nodoc
class __$$MouseMovedEventImplCopyWithImpl<$Res>
    extends _$SignalEventCopyWithImpl<$Res, _$MouseMovedEventImpl>
    implements _$$MouseMovedEventImplCopyWith<$Res> {
  __$$MouseMovedEventImplCopyWithImpl(
      _$MouseMovedEventImpl _value, $Res Function(_$MouseMovedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dx = null,
    Object? dy = null,
  }) {
    return _then(_$MouseMovedEventImpl(
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

class _$MouseMovedEventImpl implements _MouseMovedEvent {
  const _$MouseMovedEventImpl({required this.dx, required this.dy});

  @override
  final double dx;
  @override
  final double dy;

  @override
  String toString() {
    return 'SignalEvent.mouseMoved(dx: $dx, dy: $dy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MouseMovedEventImpl &&
            (identical(other.dx, dx) || other.dx == dx) &&
            (identical(other.dy, dy) || other.dy == dy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dx, dy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MouseMovedEventImplCopyWith<_$MouseMovedEventImpl> get copyWith =>
      __$$MouseMovedEventImplCopyWithImpl<_$MouseMovedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) addressUpdated,
    required TResult Function(String key) keyPressed,
    required TResult Function(List<String> keys) multipleKeysPressed,
    required TResult Function(double dx, double dy) mouseMoved,
    required TResult Function(String button) mousePressed,
  }) {
    return mouseMoved(dx, dy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address)? addressUpdated,
    TResult? Function(String key)? keyPressed,
    TResult? Function(List<String> keys)? multipleKeysPressed,
    TResult? Function(double dx, double dy)? mouseMoved,
    TResult? Function(String button)? mousePressed,
  }) {
    return mouseMoved?.call(dx, dy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? addressUpdated,
    TResult Function(String key)? keyPressed,
    TResult Function(List<String> keys)? multipleKeysPressed,
    TResult Function(double dx, double dy)? mouseMoved,
    TResult Function(String button)? mousePressed,
    required TResult orElse(),
  }) {
    if (mouseMoved != null) {
      return mouseMoved(dx, dy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressUpdatedEvent value) addressUpdated,
    required TResult Function(_KeyPressedEvent value) keyPressed,
    required TResult Function(_MultipleKeysPressedEvent value)
        multipleKeysPressed,
    required TResult Function(_MouseMovedEvent value) mouseMoved,
    required TResult Function(_MousePressedEvent value) mousePressed,
  }) {
    return mouseMoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult? Function(_KeyPressedEvent value)? keyPressed,
    TResult? Function(_MultipleKeysPressedEvent value)? multipleKeysPressed,
    TResult? Function(_MouseMovedEvent value)? mouseMoved,
    TResult? Function(_MousePressedEvent value)? mousePressed,
  }) {
    return mouseMoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult Function(_KeyPressedEvent value)? keyPressed,
    TResult Function(_MultipleKeysPressedEvent value)? multipleKeysPressed,
    TResult Function(_MouseMovedEvent value)? mouseMoved,
    TResult Function(_MousePressedEvent value)? mousePressed,
    required TResult orElse(),
  }) {
    if (mouseMoved != null) {
      return mouseMoved(this);
    }
    return orElse();
  }
}

abstract class _MouseMovedEvent implements SignalEvent {
  const factory _MouseMovedEvent(
      {required final double dx,
      required final double dy}) = _$MouseMovedEventImpl;

  double get dx;
  double get dy;
  @JsonKey(ignore: true)
  _$$MouseMovedEventImplCopyWith<_$MouseMovedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MousePressedEventImplCopyWith<$Res> {
  factory _$$MousePressedEventImplCopyWith(_$MousePressedEventImpl value,
          $Res Function(_$MousePressedEventImpl) then) =
      __$$MousePressedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String button});
}

/// @nodoc
class __$$MousePressedEventImplCopyWithImpl<$Res>
    extends _$SignalEventCopyWithImpl<$Res, _$MousePressedEventImpl>
    implements _$$MousePressedEventImplCopyWith<$Res> {
  __$$MousePressedEventImplCopyWithImpl(_$MousePressedEventImpl _value,
      $Res Function(_$MousePressedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? button = null,
  }) {
    return _then(_$MousePressedEventImpl(
      button: null == button
          ? _value.button
          : button // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MousePressedEventImpl implements _MousePressedEvent {
  const _$MousePressedEventImpl({required this.button});

  @override
  final String button;

  @override
  String toString() {
    return 'SignalEvent.mousePressed(button: $button)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MousePressedEventImpl &&
            (identical(other.button, button) || other.button == button));
  }

  @override
  int get hashCode => Object.hash(runtimeType, button);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MousePressedEventImplCopyWith<_$MousePressedEventImpl> get copyWith =>
      __$$MousePressedEventImplCopyWithImpl<_$MousePressedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) addressUpdated,
    required TResult Function(String key) keyPressed,
    required TResult Function(List<String> keys) multipleKeysPressed,
    required TResult Function(double dx, double dy) mouseMoved,
    required TResult Function(String button) mousePressed,
  }) {
    return mousePressed(button);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address)? addressUpdated,
    TResult? Function(String key)? keyPressed,
    TResult? Function(List<String> keys)? multipleKeysPressed,
    TResult? Function(double dx, double dy)? mouseMoved,
    TResult? Function(String button)? mousePressed,
  }) {
    return mousePressed?.call(button);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? addressUpdated,
    TResult Function(String key)? keyPressed,
    TResult Function(List<String> keys)? multipleKeysPressed,
    TResult Function(double dx, double dy)? mouseMoved,
    TResult Function(String button)? mousePressed,
    required TResult orElse(),
  }) {
    if (mousePressed != null) {
      return mousePressed(button);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressUpdatedEvent value) addressUpdated,
    required TResult Function(_KeyPressedEvent value) keyPressed,
    required TResult Function(_MultipleKeysPressedEvent value)
        multipleKeysPressed,
    required TResult Function(_MouseMovedEvent value) mouseMoved,
    required TResult Function(_MousePressedEvent value) mousePressed,
  }) {
    return mousePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult? Function(_KeyPressedEvent value)? keyPressed,
    TResult? Function(_MultipleKeysPressedEvent value)? multipleKeysPressed,
    TResult? Function(_MouseMovedEvent value)? mouseMoved,
    TResult? Function(_MousePressedEvent value)? mousePressed,
  }) {
    return mousePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult Function(_KeyPressedEvent value)? keyPressed,
    TResult Function(_MultipleKeysPressedEvent value)? multipleKeysPressed,
    TResult Function(_MouseMovedEvent value)? mouseMoved,
    TResult Function(_MousePressedEvent value)? mousePressed,
    required TResult orElse(),
  }) {
    if (mousePressed != null) {
      return mousePressed(this);
    }
    return orElse();
  }
}

abstract class _MousePressedEvent implements SignalEvent {
  const factory _MousePressedEvent({required final String button}) =
      _$MousePressedEventImpl;

  String get button;
  @JsonKey(ignore: true)
  _$$MousePressedEventImplCopyWith<_$MousePressedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignalState {
  String get address => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignalStateCopyWith<SignalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignalStateCopyWith<$Res> {
  factory $SignalStateCopyWith(
          SignalState value, $Res Function(SignalState) then) =
      _$SignalStateCopyWithImpl<$Res, SignalState>;
  @useResult
  $Res call({String address, String error});
}

/// @nodoc
class _$SignalStateCopyWithImpl<$Res, $Val extends SignalState>
    implements $SignalStateCopyWith<$Res> {
  _$SignalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignalStateImplCopyWith<$Res>
    implements $SignalStateCopyWith<$Res> {
  factory _$$SignalStateImplCopyWith(
          _$SignalStateImpl value, $Res Function(_$SignalStateImpl) then) =
      __$$SignalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, String error});
}

/// @nodoc
class __$$SignalStateImplCopyWithImpl<$Res>
    extends _$SignalStateCopyWithImpl<$Res, _$SignalStateImpl>
    implements _$$SignalStateImplCopyWith<$Res> {
  __$$SignalStateImplCopyWithImpl(
      _$SignalStateImpl _value, $Res Function(_$SignalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? error = null,
  }) {
    return _then(_$SignalStateImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignalStateImpl implements _SignalState {
  const _$SignalStateImpl({this.address = '', this.error = ''});

  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'SignalState(address: $address, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignalStateImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignalStateImplCopyWith<_$SignalStateImpl> get copyWith =>
      __$$SignalStateImplCopyWithImpl<_$SignalStateImpl>(this, _$identity);
}

abstract class _SignalState implements SignalState {
  const factory _SignalState({final String address, final String error}) =
      _$SignalStateImpl;

  @override
  String get address;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$SignalStateImplCopyWith<_$SignalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
