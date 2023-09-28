part of 'keyboard_bloc.dart';

@freezed
class KeyboardState with _$KeyboardState {
  const factory KeyboardState({
    @Default('') String text,
    @Default(ShiftState.off) shiftState,
    @Default(EnglishKeyboardLanguage()) KeyboardLanguage language,
    @Default([
      EnglishKeyboardLanguage(),
      RussianKeyboardLanguage(),
    ])
    List<KeyboardLanguage> allLanguages,
  }) = _KeyboardState;
}
