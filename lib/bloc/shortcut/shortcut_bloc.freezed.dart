// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shortcut_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShortcutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) keyPressed,
    required TResult Function() sendSelectedPressed,
    required TResult Function() selectingSwitched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? keyPressed,
    TResult? Function()? sendSelectedPressed,
    TResult? Function()? selectingSwitched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? keyPressed,
    TResult Function()? sendSelectedPressed,
    TResult Function()? selectingSwitched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KeyPressedEvent value) keyPressed,
    required TResult Function(_SendSelectedPressedEvent value)
        sendSelectedPressed,
    required TResult Function(_SelectingSwitchedEvent value) selectingSwitched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KeyPressedEvent value)? keyPressed,
    TResult? Function(_SendSelectedPressedEvent value)? sendSelectedPressed,
    TResult? Function(_SelectingSwitchedEvent value)? selectingSwitched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KeyPressedEvent value)? keyPressed,
    TResult Function(_SendSelectedPressedEvent value)? sendSelectedPressed,
    TResult Function(_SelectingSwitchedEvent value)? selectingSwitched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortcutEventCopyWith<$Res> {
  factory $ShortcutEventCopyWith(
          ShortcutEvent value, $Res Function(ShortcutEvent) then) =
      _$ShortcutEventCopyWithImpl<$Res, ShortcutEvent>;
}

/// @nodoc
class _$ShortcutEventCopyWithImpl<$Res, $Val extends ShortcutEvent>
    implements $ShortcutEventCopyWith<$Res> {
  _$ShortcutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
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
    extends _$ShortcutEventCopyWithImpl<$Res, _$KeyPressedEventImpl>
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
    return 'ShortcutEvent.keyPressed(key: $key)';
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
    required TResult Function(String key) keyPressed,
    required TResult Function() sendSelectedPressed,
    required TResult Function() selectingSwitched,
  }) {
    return keyPressed(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? keyPressed,
    TResult? Function()? sendSelectedPressed,
    TResult? Function()? selectingSwitched,
  }) {
    return keyPressed?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? keyPressed,
    TResult Function()? sendSelectedPressed,
    TResult Function()? selectingSwitched,
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
    required TResult Function(_KeyPressedEvent value) keyPressed,
    required TResult Function(_SendSelectedPressedEvent value)
        sendSelectedPressed,
    required TResult Function(_SelectingSwitchedEvent value) selectingSwitched,
  }) {
    return keyPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KeyPressedEvent value)? keyPressed,
    TResult? Function(_SendSelectedPressedEvent value)? sendSelectedPressed,
    TResult? Function(_SelectingSwitchedEvent value)? selectingSwitched,
  }) {
    return keyPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KeyPressedEvent value)? keyPressed,
    TResult Function(_SendSelectedPressedEvent value)? sendSelectedPressed,
    TResult Function(_SelectingSwitchedEvent value)? selectingSwitched,
    required TResult orElse(),
  }) {
    if (keyPressed != null) {
      return keyPressed(this);
    }
    return orElse();
  }
}

abstract class _KeyPressedEvent implements ShortcutEvent {
  const factory _KeyPressedEvent({required final String key}) =
      _$KeyPressedEventImpl;

  String get key;
  @JsonKey(ignore: true)
  _$$KeyPressedEventImplCopyWith<_$KeyPressedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendSelectedPressedEventImplCopyWith<$Res> {
  factory _$$SendSelectedPressedEventImplCopyWith(
          _$SendSelectedPressedEventImpl value,
          $Res Function(_$SendSelectedPressedEventImpl) then) =
      __$$SendSelectedPressedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendSelectedPressedEventImplCopyWithImpl<$Res>
    extends _$ShortcutEventCopyWithImpl<$Res, _$SendSelectedPressedEventImpl>
    implements _$$SendSelectedPressedEventImplCopyWith<$Res> {
  __$$SendSelectedPressedEventImplCopyWithImpl(
      _$SendSelectedPressedEventImpl _value,
      $Res Function(_$SendSelectedPressedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendSelectedPressedEventImpl implements _SendSelectedPressedEvent {
  const _$SendSelectedPressedEventImpl();

  @override
  String toString() {
    return 'ShortcutEvent.sendSelectedPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendSelectedPressedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) keyPressed,
    required TResult Function() sendSelectedPressed,
    required TResult Function() selectingSwitched,
  }) {
    return sendSelectedPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? keyPressed,
    TResult? Function()? sendSelectedPressed,
    TResult? Function()? selectingSwitched,
  }) {
    return sendSelectedPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? keyPressed,
    TResult Function()? sendSelectedPressed,
    TResult Function()? selectingSwitched,
    required TResult orElse(),
  }) {
    if (sendSelectedPressed != null) {
      return sendSelectedPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KeyPressedEvent value) keyPressed,
    required TResult Function(_SendSelectedPressedEvent value)
        sendSelectedPressed,
    required TResult Function(_SelectingSwitchedEvent value) selectingSwitched,
  }) {
    return sendSelectedPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KeyPressedEvent value)? keyPressed,
    TResult? Function(_SendSelectedPressedEvent value)? sendSelectedPressed,
    TResult? Function(_SelectingSwitchedEvent value)? selectingSwitched,
  }) {
    return sendSelectedPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KeyPressedEvent value)? keyPressed,
    TResult Function(_SendSelectedPressedEvent value)? sendSelectedPressed,
    TResult Function(_SelectingSwitchedEvent value)? selectingSwitched,
    required TResult orElse(),
  }) {
    if (sendSelectedPressed != null) {
      return sendSelectedPressed(this);
    }
    return orElse();
  }
}

abstract class _SendSelectedPressedEvent implements ShortcutEvent {
  const factory _SendSelectedPressedEvent() = _$SendSelectedPressedEventImpl;
}

/// @nodoc
abstract class _$$SelectingSwitchedEventImplCopyWith<$Res> {
  factory _$$SelectingSwitchedEventImplCopyWith(
          _$SelectingSwitchedEventImpl value,
          $Res Function(_$SelectingSwitchedEventImpl) then) =
      __$$SelectingSwitchedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectingSwitchedEventImplCopyWithImpl<$Res>
    extends _$ShortcutEventCopyWithImpl<$Res, _$SelectingSwitchedEventImpl>
    implements _$$SelectingSwitchedEventImplCopyWith<$Res> {
  __$$SelectingSwitchedEventImplCopyWithImpl(
      _$SelectingSwitchedEventImpl _value,
      $Res Function(_$SelectingSwitchedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectingSwitchedEventImpl implements _SelectingSwitchedEvent {
  const _$SelectingSwitchedEventImpl();

  @override
  String toString() {
    return 'ShortcutEvent.selectingSwitched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectingSwitchedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key) keyPressed,
    required TResult Function() sendSelectedPressed,
    required TResult Function() selectingSwitched,
  }) {
    return selectingSwitched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key)? keyPressed,
    TResult? Function()? sendSelectedPressed,
    TResult? Function()? selectingSwitched,
  }) {
    return selectingSwitched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key)? keyPressed,
    TResult Function()? sendSelectedPressed,
    TResult Function()? selectingSwitched,
    required TResult orElse(),
  }) {
    if (selectingSwitched != null) {
      return selectingSwitched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KeyPressedEvent value) keyPressed,
    required TResult Function(_SendSelectedPressedEvent value)
        sendSelectedPressed,
    required TResult Function(_SelectingSwitchedEvent value) selectingSwitched,
  }) {
    return selectingSwitched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KeyPressedEvent value)? keyPressed,
    TResult? Function(_SendSelectedPressedEvent value)? sendSelectedPressed,
    TResult? Function(_SelectingSwitchedEvent value)? selectingSwitched,
  }) {
    return selectingSwitched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KeyPressedEvent value)? keyPressed,
    TResult Function(_SendSelectedPressedEvent value)? sendSelectedPressed,
    TResult Function(_SelectingSwitchedEvent value)? selectingSwitched,
    required TResult orElse(),
  }) {
    if (selectingSwitched != null) {
      return selectingSwitched(this);
    }
    return orElse();
  }
}

abstract class _SelectingSwitchedEvent implements ShortcutEvent {
  const factory _SelectingSwitchedEvent() = _$SelectingSwitchedEventImpl;
}

/// @nodoc
mixin _$ShortcutState {
  bool get selecting => throw _privateConstructorUsedError;
  Set<String> get selectedKeys => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShortcutStateCopyWith<ShortcutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortcutStateCopyWith<$Res> {
  factory $ShortcutStateCopyWith(
          ShortcutState value, $Res Function(ShortcutState) then) =
      _$ShortcutStateCopyWithImpl<$Res, ShortcutState>;
  @useResult
  $Res call({bool selecting, Set<String> selectedKeys});
}

/// @nodoc
class _$ShortcutStateCopyWithImpl<$Res, $Val extends ShortcutState>
    implements $ShortcutStateCopyWith<$Res> {
  _$ShortcutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selecting = null,
    Object? selectedKeys = null,
  }) {
    return _then(_value.copyWith(
      selecting: null == selecting
          ? _value.selecting
          : selecting // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedKeys: null == selectedKeys
          ? _value.selectedKeys
          : selectedKeys // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShortcutStateImplCopyWith<$Res>
    implements $ShortcutStateCopyWith<$Res> {
  factory _$$ShortcutStateImplCopyWith(
          _$ShortcutStateImpl value, $Res Function(_$ShortcutStateImpl) then) =
      __$$ShortcutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool selecting, Set<String> selectedKeys});
}

/// @nodoc
class __$$ShortcutStateImplCopyWithImpl<$Res>
    extends _$ShortcutStateCopyWithImpl<$Res, _$ShortcutStateImpl>
    implements _$$ShortcutStateImplCopyWith<$Res> {
  __$$ShortcutStateImplCopyWithImpl(
      _$ShortcutStateImpl _value, $Res Function(_$ShortcutStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selecting = null,
    Object? selectedKeys = null,
  }) {
    return _then(_$ShortcutStateImpl(
      selecting: null == selecting
          ? _value.selecting
          : selecting // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedKeys: null == selectedKeys
          ? _value._selectedKeys
          : selectedKeys // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$ShortcutStateImpl extends _ShortcutState {
  const _$ShortcutStateImpl(
      {this.selecting = false, final Set<String> selectedKeys = const {}})
      : _selectedKeys = selectedKeys,
        super._();

  @override
  @JsonKey()
  final bool selecting;
  final Set<String> _selectedKeys;
  @override
  @JsonKey()
  Set<String> get selectedKeys {
    if (_selectedKeys is EqualUnmodifiableSetView) return _selectedKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedKeys);
  }

  @override
  String toString() {
    return 'ShortcutState(selecting: $selecting, selectedKeys: $selectedKeys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortcutStateImpl &&
            (identical(other.selecting, selecting) ||
                other.selecting == selecting) &&
            const DeepCollectionEquality()
                .equals(other._selectedKeys, _selectedKeys));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selecting,
      const DeepCollectionEquality().hash(_selectedKeys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortcutStateImplCopyWith<_$ShortcutStateImpl> get copyWith =>
      __$$ShortcutStateImplCopyWithImpl<_$ShortcutStateImpl>(this, _$identity);
}

abstract class _ShortcutState extends ShortcutState {
  const factory _ShortcutState(
      {final bool selecting,
      final Set<String> selectedKeys}) = _$ShortcutStateImpl;
  const _ShortcutState._() : super._();

  @override
  bool get selecting;
  @override
  Set<String> get selectedKeys;
  @override
  @JsonKey(ignore: true)
  _$$ShortcutStateImplCopyWith<_$ShortcutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
