part of 'mouse_bloc.dart';

@freezed
class MouseState with _$MouseState {
  const factory MouseState({
    @Default(10) double sensitivity,
  }) = _MouseState;
}
