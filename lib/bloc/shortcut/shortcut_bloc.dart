import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../signal/signal_bloc.dart';

part 'shortcut_event.dart';

part 'shortcut_state.dart';

part 'shortcut_bloc.freezed.dart';

class ShortcutBloc extends Bloc<ShortcutEvent, ShortcutState> {
  ShortcutBloc(
    this._signalBloc,
  ) : super(const ShortcutState()) {
    on<_KeyPressedEvent>(_onKeyPressed);
    on<_SelectingSwitchedEvent>(_onSelectingSwitched);
    on<_SendSelectedPressedEvent>(_onSendSelectedPressed);
  }

  final SignalBloc _signalBloc;

  void _onKeyPressed(
    _KeyPressedEvent event,
    Emitter<ShortcutState> emit,
  ) {
    if (state.selecting) {
      final selectedKeys = Set.of(state.selectedKeys);
      final selected = selectedKeys.contains(event.key);

      if (selected) {
        emit(
          state.copyWith(
            selectedKeys: selectedKeys..remove(event.key),
          ),
        );
      } else {
        emit(
          state.copyWith(
            selectedKeys: selectedKeys..add(event.key),
          ),
        );
      }
    } else {
      _signalBloc.add(SignalEvent.keyPressed(key: event.key));
    }
  }

  void _onSelectingSwitched(
    _SelectingSwitchedEvent event,
    Emitter<ShortcutState> emit,
  ) {
    final selecting = state.selecting;

    emit(
      state.copyWith(
        selecting: !selecting,
        selectedKeys: selecting ? {} : state.selectedKeys,
      ),
    );
  }

  void _onSendSelectedPressed(
    _SendSelectedPressedEvent event,
    Emitter<ShortcutState> emit,
  ) {
    _signalBloc.add(SignalEvent.multipleKeysPressed(keys: state.selectedKeys.toList()));
  }
}
