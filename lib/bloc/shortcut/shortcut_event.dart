part of 'shortcut_bloc.dart';

@freezed
class ShortcutEvent with _$ShortcutEvent {
  const factory ShortcutEvent.started() = _Started;
}
