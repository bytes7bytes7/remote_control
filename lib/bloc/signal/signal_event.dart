part of 'signal_bloc.dart';

@freezed
class SignalEvent with _$SignalEvent {
  const factory SignalEvent.addressUpdated({
    required String address,
  }) = _AddressUpdatedEvent;

  const factory SignalEvent.keyPressed({
    required String key,
  }) = _KeyPressedEvent;

  const factory SignalEvent.multipleKeysPressed({
    required List<String> keys,
  }) = _MultipleKeysPressedEvent;
}
