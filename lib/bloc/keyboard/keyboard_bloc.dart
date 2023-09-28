import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../signal/signal_bloc.dart';

part 'keyboard_event.dart';

part 'keyboard_state.dart';

part 'keyboard_bloc.freezed.dart';

class KeyboardBloc extends Bloc<KeyboardEvent, KeyboardState> {
  KeyboardBloc(
    this._signalBloc,
  ) : super(const KeyboardState()) {
    on<_TextEditedEvent>(_onTextEdited);
  }

  final SignalBloc _signalBloc;

  void _onTextEdited(
    _TextEditedEvent event,
    Emitter<KeyboardState> emit,
  ) {
    _signalBloc.add(SignalEvent.keyPressed(key: event.text));
  }
}

class KeyboardKeys {
  static const backspace = 'backspace';
}