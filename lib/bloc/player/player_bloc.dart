import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_event.dart';

part 'player_state.dart';

part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(const PlayerState()) {
    on<_VolumeDownPressedEvent>(_onVolumeDownPressed);
    on<_VolumeUpPressedEvent>(_onVolumeUpPressed);
    on<_MutePressedEvent>(_onMutePressed);
    on<_PlayPausePressedEvent>(_onPlayPausePressed);
    on<_PreviousPressedEvent>(_onPreviousPressed);
    on<_NextPressedEvent>(_onNextPressed);
  }

  void _onVolumeDownPressed(
    _VolumeDownPressedEvent event,
    Emitter<PlayerState> emit,
  ) {}

  void _onVolumeUpPressed(
    _VolumeUpPressedEvent event,
    Emitter<PlayerState> emit,
  ) {}

  void _onMutePressed(
    _MutePressedEvent event,
    Emitter<PlayerState> emit,
  ) {}

  void _onPlayPausePressed(
    _PlayPausePressedEvent event,
    Emitter<PlayerState> emit,
  ) {}

  void _onPreviousPressed(
    _PreviousPressedEvent event,
    Emitter<PlayerState> emit,
  ) {}

  void _onNextPressed(
    _NextPressedEvent event,
    Emitter<PlayerState> emit,
  ) {}
}

class _ControlKeys {
  static const volumeUp = 'volumeup';
  static const volumeDown = 'volumedown';
  static const volumeMute = 'volumemute';
  static const playPause = 'playpause';
  static const nextTrack = 'nexttrack';
  static const prevTrack = 'prevtrack';
}
