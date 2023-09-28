part of 'signal_bloc.dart';

@freezed
class SignalEvent with _$SignalEvent {
  const factory SignalEvent.addressUpdated({
    required String address,
  }) = _AddressUpdatedEvent;

  const factory SignalEvent.keysPressed({
    required List<String> keys,
  }) = _KeysPressedEvent;
}
