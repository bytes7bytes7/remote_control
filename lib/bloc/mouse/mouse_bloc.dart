import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../signal/signal_bloc.dart';

part 'mouse_event.dart';

part 'mouse_state.dart';

part 'mouse_bloc.freezed.dart';

class MouseBloc extends Bloc<MouseEvent, MouseState> {
  MouseBloc(
    this._signalBloc,
  ) : super(const MouseState()) {
    on<_MovedEvent>(
      _onMoved,
      transformer: (events, mapper) => events
          .throttleTime(const Duration(milliseconds: 50))
          .asyncExpand(mapper),
    );
    on<_SensitivityUpdatedEvent>(_onSensitivityUpdated);
    on<_PressedEvent>(_onPressed);
  }

  final SignalBloc _signalBloc;

  void _onMoved(
    _MovedEvent event,
    Emitter<MouseState> emit,
  ) {
    _signalBloc.add(
      SignalEvent.mouseMoved(
        dx: event.dx * state.sensitivity,
        dy: event.dy * state.sensitivity,
      ),
    );
  }

  void _onSensitivityUpdated(
    _SensitivityUpdatedEvent event,
    Emitter<MouseState> emit,
  ) {
    emit(state.copyWith(sensitivity: event.value));
  }

  void _onPressed(
    _PressedEvent event,
    Emitter<MouseState> emit,
  ) {
    _signalBloc.add(SignalEvent.mousePressed(button: event.button));
  }
}
