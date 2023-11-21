part of 'shortcut_bloc.dart';

@freezed
class ShortcutState with _$ShortcutState {
  const factory ShortcutState({
    @Default(false) bool selecting,
    @Default({}) Set<String> selectedKeys,
  }) = _ShortcutState;

  const ShortcutState._();

  bool isSelected(String key) => selectedKeys.contains(key);
}
