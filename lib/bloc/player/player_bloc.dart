import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../signal/signal_bloc.dart';

part 'player_event.dart';

part 'player_state.dart';

part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc(
    this._signalBloc,
  ) : super(const PlayerState()) {
    on<_VolumeDownPressedEvent>(_onVolumeDownPressed);
    on<_VolumeUpPressedEvent>(_onVolumeUpPressed);
    on<_MutePressedEvent>(_onMutePressed);
    on<_PlayPausePressedEvent>(_onPlayPausePressed);
    on<_PreviousPressedEvent>(_onPreviousPressed);
    on<_NextPressedEvent>(_onNextPressed);
  }

  final SignalBloc _signalBloc;

  void _onVolumeDownPressed(
    _VolumeDownPressedEvent event,
    Emitter<PlayerState> emit,
  ) {
    _signalBloc.add(
      const SignalEvent.keyPressed(
        key: _ControlKeys.volumeDown,
      ),
    );
  }

  void _onVolumeUpPressed(
    _VolumeUpPressedEvent event,
    Emitter<PlayerState> emit,
  ) {
    _signalBloc.add(
      const SignalEvent.keyPressed(
        key: _ControlKeys.volumeUp,
      ),
    );
  }

  void _onMutePressed(
    _MutePressedEvent event,
    Emitter<PlayerState> emit,
  ) {
    _signalBloc.add(
      const SignalEvent.keyPressed(
        key: _ControlKeys.volumeMute,
      ),
    );
  }

  void _onPlayPausePressed(
    _PlayPausePressedEvent event,
    Emitter<PlayerState> emit,
  ) {
    _signalBloc.add(
      const SignalEvent.keyPressed(
        key: _ControlKeys.playPause,
      ),
    );
  }

  void _onPreviousPressed(
    _PreviousPressedEvent event,
    Emitter<PlayerState> emit,
  ) {
    _signalBloc.add(
      const SignalEvent.keyPressed(
        key: _ControlKeys.prevTrack,
      ),
    );
  }

  void _onNextPressed(
    _NextPressedEvent event,
    Emitter<PlayerState> emit,
  ) {
    _signalBloc.add(
      const SignalEvent.keyPressed(
        key: _ControlKeys.nextTrack,
      ),
    );
  }
}

class _ControlKeys {
  static const volumeUp = 'volumeup';
  static const volumeDown = 'volumedown';
  static const volumeMute = 'volumemute';
  static const playPause = 'playpause';
  static const nextTrack = 'nexttrack';
  static const prevTrack = 'prevtrack';
}
