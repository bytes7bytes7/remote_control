part of 'player_bloc.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.volumeDownPressed() = _VolumeDownPressedEvent;

  const factory PlayerEvent.volumeUpPressed() = _VolumeUpPressedEvent;

  const factory PlayerEvent.mutePressed() = _MutePressedEvent;

  const factory PlayerEvent.playPausePressed() = _PlayPausePressedEvent;

  const factory PlayerEvent.previousPressed() = _PreviousPressedEvent;

  const factory PlayerEvent.nextPressed() = _NextPressedEvent;
}
