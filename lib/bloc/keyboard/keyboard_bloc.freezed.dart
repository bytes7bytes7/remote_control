// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KeyboardEvent {
  String get text => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) textEdited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? textEdited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? textEdited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextEditedEvent value) textEdited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextEditedEvent value)? textEdited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextEditedEvent value)? textEdited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KeyboardEventCopyWith<KeyboardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardEventCopyWith<$Res> {
  factory $KeyboardEventCopyWith(
          KeyboardEvent value, $Res Function(KeyboardEvent) then) =
      _$KeyboardEventCopyWithImpl<$Res, KeyboardEvent>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$KeyboardEventCopyWithImpl<$Res, $Val extends KeyboardEvent>
    implements $KeyboardEventCopyWith<$Res> {
  _$KeyboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextEditedEventImplCopyWith<$Res>
    implements $KeyboardEventCopyWith<$Res> {
  factory _$$TextEditedEventImplCopyWith(_$TextEditedEventImpl value,
          $Res Function(_$TextEditedEventImpl) then) =
      __$$TextEditedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$TextEditedEventImplCopyWithImpl<$Res>
    extends _$KeyboardEventCopyWithImpl<$Res, _$TextEditedEventImpl>
    implements _$$TextEditedEventImplCopyWith<$Res> {
  __$$TextEditedEventImplCopyWithImpl(
      _$TextEditedEventImpl _value, $Res Function(_$TextEditedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$TextEditedEventImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TextEditedEventImpl implements _TextEditedEvent {
  const _$TextEditedEventImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'KeyboardEvent.textEdited(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextEditedEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextEditedEventImplCopyWith<_$TextEditedEventImpl> get copyWith =>
      __$$TextEditedEventImplCopyWithImpl<_$TextEditedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) textEdited,
  }) {
    return textEdited(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? textEdited,
  }) {
    return textEdited?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? textEdited,
    required TResult orElse(),
  }) {
    if (textEdited != null) {
      return textEdited(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextEditedEvent value) textEdited,
  }) {
    return textEdited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextEditedEvent value)? textEdited,
  }) {
    return textEdited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextEditedEvent value)? textEdited,
    required TResult orElse(),
  }) {
    if (textEdited != null) {
      return textEdited(this);
    }
    return orElse();
  }
}

abstract class _TextEditedEvent implements KeyboardEvent {
  const factory _TextEditedEvent({required final String text}) =
      _$TextEditedEventImpl;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$TextEditedEventImplCopyWith<_$TextEditedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$KeyboardState {
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KeyboardStateCopyWith<KeyboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardStateCopyWith<$Res> {
  factory $KeyboardStateCopyWith(
          KeyboardState value, $Res Function(KeyboardState) then) =
      _$KeyboardStateCopyWithImpl<$Res, KeyboardState>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$KeyboardStateCopyWithImpl<$Res, $Val extends KeyboardState>
    implements $KeyboardStateCopyWith<$Res> {
  _$KeyboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyboardStateImplCopyWith<$Res>
    implements $KeyboardStateCopyWith<$Res> {
  factory _$$KeyboardStateImplCopyWith(
          _$KeyboardStateImpl value, $Res Function(_$KeyboardStateImpl) then) =
      __$$KeyboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$KeyboardStateImplCopyWithImpl<$Res>
    extends _$KeyboardStateCopyWithImpl<$Res, _$KeyboardStateImpl>
    implements _$$KeyboardStateImplCopyWith<$Res> {
  __$$KeyboardStateImplCopyWithImpl(
      _$KeyboardStateImpl _value, $Res Function(_$KeyboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$KeyboardStateImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KeyboardStateImpl implements _KeyboardState {
  const _$KeyboardStateImpl({this.text = ''});

  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'KeyboardState(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyboardStateImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyboardStateImplCopyWith<_$KeyboardStateImpl> get copyWith =>
      __$$KeyboardStateImplCopyWithImpl<_$KeyboardStateImpl>(this, _$identity);
}

abstract class _KeyboardState implements KeyboardState {
  const factory _KeyboardState({final String text}) = _$KeyboardStateImpl;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$KeyboardStateImplCopyWith<_$KeyboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
