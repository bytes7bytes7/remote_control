part of 'keyboard_bloc.dart';

@freezed
class KeyboardEvent with _$KeyboardEvent {
  const factory KeyboardEvent.textEdited({
    required String text,
  }) = _TextEditedEvent;
}
