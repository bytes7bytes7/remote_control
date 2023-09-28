import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/media_keys.dart';
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
        key: MediaKeys.volumeDown,
      ),
    );
  }

  void _onVolumeUpPressed(
    _VolumeUpPressedEvent event,
    Emitter<PlayerState> emit,
  ) {
    _signalBloc.add(
      const SignalEvent.keyPressed(
        key: MediaKeys.volumeUp,
      ),
    );
  }

  void _onMutePressed(
    _MutePressedEvent event,
    Emitter<PlayerState> emit,
  ) {
    _signalBloc.add(
      const SignalEvent.keyPressed(
        key: MediaKeys.volumeMute,
      ),
    );
  }

  void _onPlayPausePressed(
    _PlayPausePressedEvent event,
    Emitter<PlayerState> emit,
  ) {
    _signalBloc.add(
      const SignalEvent.keyPressed(
        key: MediaKeys.playPause,
      ),
    );
  }

  void _onPreviousPressed(
    _PreviousPressedEvent event,
    Emitter<PlayerState> emit,
  ) {
    _signalBloc.add(
      const SignalEvent.keyPressed(
        key: MediaKeys.prevTrack,
      ),
    );
  }

  void _onNextPressed(
    _NextPressedEvent event,
    Emitter<PlayerState> emit,
  ) {
    _signalBloc.add(
      const SignalEvent.keyPressed(
        key: MediaKeys.nextTrack,
      ),
    );
  }
}
