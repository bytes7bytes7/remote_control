part of 'shortcut_bloc.dart';

@freezed
class ShortcutEvent with _$ShortcutEvent {
  const factory ShortcutEvent.keyPressed({
    required String key,
  }) = _KeyPressedEvent;

  const factory ShortcutEvent.sendSelectedPressed() = _SendSelectedPressedEvent;

  const factory ShortcutEvent.selectingSwitched() = _SelectingSwitchedEvent;
}
