part of 'signal_bloc.dart';

@freezed
class SignalEvent with _$SignalEvent {
  const factory SignalEvent.init() = _InitEvent;

  const factory SignalEvent.addressUpdated({
    required String address,
  }) = _AddressUpdatedEvent;

  const factory SignalEvent.keyPressed({
    required String key,
  }) = _KeyPressedEvent;

  const factory SignalEvent.multipleKeysPressed({
    required List<String> keys,
  }) = _MultipleKeysPressedEvent;

  const factory SignalEvent.mouseMoved({
    required double dx,
    required double dy,
  }) = _MouseMovedEvent;

  const factory SignalEvent.mousePressed({
    required String button,
  }) = _MousePressedEvent;
}
