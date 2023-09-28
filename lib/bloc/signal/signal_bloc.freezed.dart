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
    required TResult Function(List<String> keys) keysPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address)? addressUpdated,
    TResult? Function(List<String> keys)? keysPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? addressUpdated,
    TResult Function(List<String> keys)? keysPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressUpdatedEvent value) addressUpdated,
    required TResult Function(_KeysPressedEvent value) keysPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult? Function(_KeysPressedEvent value)? keysPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult Function(_KeysPressedEvent value)? keysPressed,
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
    required TResult Function(List<String> keys) keysPressed,
  }) {
    return addressUpdated(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address)? addressUpdated,
    TResult? Function(List<String> keys)? keysPressed,
  }) {
    return addressUpdated?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? addressUpdated,
    TResult Function(List<String> keys)? keysPressed,
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
    required TResult Function(_KeysPressedEvent value) keysPressed,
  }) {
    return addressUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult? Function(_KeysPressedEvent value)? keysPressed,
  }) {
    return addressUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult Function(_KeysPressedEvent value)? keysPressed,
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
abstract class _$$KeysPressedEventImplCopyWith<$Res> {
  factory _$$KeysPressedEventImplCopyWith(_$KeysPressedEventImpl value,
          $Res Function(_$KeysPressedEventImpl) then) =
      __$$KeysPressedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> keys});
}

/// @nodoc
class __$$KeysPressedEventImplCopyWithImpl<$Res>
    extends _$SignalEventCopyWithImpl<$Res, _$KeysPressedEventImpl>
    implements _$$KeysPressedEventImplCopyWith<$Res> {
  __$$KeysPressedEventImplCopyWithImpl(_$KeysPressedEventImpl _value,
      $Res Function(_$KeysPressedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keys = null,
  }) {
    return _then(_$KeysPressedEventImpl(
      keys: null == keys
          ? _value._keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$KeysPressedEventImpl implements _KeysPressedEvent {
  const _$KeysPressedEventImpl({required final List<String> keys})
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
    return 'SignalEvent.keysPressed(keys: $keys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeysPressedEventImpl &&
            const DeepCollectionEquality().equals(other._keys, _keys));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_keys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeysPressedEventImplCopyWith<_$KeysPressedEventImpl> get copyWith =>
      __$$KeysPressedEventImplCopyWithImpl<_$KeysPressedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address) addressUpdated,
    required TResult Function(List<String> keys) keysPressed,
  }) {
    return keysPressed(keys);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address)? addressUpdated,
    TResult? Function(List<String> keys)? keysPressed,
  }) {
    return keysPressed?.call(keys);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address)? addressUpdated,
    TResult Function(List<String> keys)? keysPressed,
    required TResult orElse(),
  }) {
    if (keysPressed != null) {
      return keysPressed(keys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressUpdatedEvent value) addressUpdated,
    required TResult Function(_KeysPressedEvent value) keysPressed,
  }) {
    return keysPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult? Function(_KeysPressedEvent value)? keysPressed,
  }) {
    return keysPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressUpdatedEvent value)? addressUpdated,
    TResult Function(_KeysPressedEvent value)? keysPressed,
    required TResult orElse(),
  }) {
    if (keysPressed != null) {
      return keysPressed(this);
    }
    return orElse();
  }
}

abstract class _KeysPressedEvent implements SignalEvent {
  const factory _KeysPressedEvent({required final List<String> keys}) =
      _$KeysPressedEventImpl;

  List<String> get keys;
  @JsonKey(ignore: true)
  _$$KeysPressedEventImplCopyWith<_$KeysPressedEventImpl> get copyWith =>
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
