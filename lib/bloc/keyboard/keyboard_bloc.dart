import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../signal/signal_bloc.dart';
import 'keyboard_language.dart';

part 'keyboard_event.dart';

part 'keyboard_state.dart';

part 'keyboard_bloc.freezed.dart';

enum ShiftState {
  off,
  on,
  permanent,
}

class KeyboardBloc extends Bloc<KeyboardEvent, KeyboardState> {
  KeyboardBloc(
    this._signalBloc,
  ) : super(const KeyboardState()) {
    on<_TextEditedEvent>(_onTextEdited);
    on<_ShirtPressedEvent>(_onShiftPressed);
    on<_LanguagePressedEvent>(_onLanguagePressed);
  }

  final SignalBloc _signalBloc;

  void _onTextEdited(
    _TextEditedEvent event,
    Emitter<KeyboardState> emit,
  ) {
    _signalBloc.add(SignalEvent.keyPressed(key: event.text));

    if (state.shiftState == ShiftState.on) {
      emit(state.copyWith(shiftState: ShiftState.off));
    }
  }

  void _onShiftPressed(
    _ShirtPressedEvent event,
    Emitter<KeyboardState> emit,
  ) {
    late final ShiftState newShiftState;

    switch (state.shiftState) {
      case ShiftState.off:
        newShiftState = ShiftState.on;
        break;

      case ShiftState.on:
        newShiftState = ShiftState.permanent;
        break;

      case ShiftState.permanent:
        newShiftState = ShiftState.off;
        break;
    }

    emit(state.copyWith(shiftState: newShiftState));
  }

  void _onLanguagePressed(
    _LanguagePressedEvent event,
    Emitter<KeyboardState> emit,
  ) {
    final index = state.allLanguages.indexWhere((e) => e.code == state.language.code);
    final next = state.allLanguages[(index + 1) % state.allLanguages.length];

    emit(state.copyWith(language: next));
  }
}
