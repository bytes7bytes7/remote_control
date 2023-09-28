part of 'mouse_bloc.dart';

@freezed
class MouseEvent with _$MouseEvent {
  const factory MouseEvent.moved({
    required double dx,
    required double dy,
  }) = _MovedEvent;

  const factory MouseEvent.sensitivityUpdated({
    required double value,
  }) = _SensitivityUpdatedEvent;

  const factory MouseEvent.pressed({
    required String button,
  }) = _PressedEvent;
}
