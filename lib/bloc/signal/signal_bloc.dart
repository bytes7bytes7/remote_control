import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signal_event.dart';

part 'signal_state.dart';

part 'signal_bloc.freezed.dart';

class SignalBloc extends Bloc<SignalEvent, SignalState> {
  SignalBloc() : super(const SignalState()) {
    on<_AddressUpdatedEvent>(_onAddressUpdated);
    on<_KeyPressedEvent>(_onKeyPressed);
    on<_MultipleKeysPressedEvent>(_onMultipleKeysPressed);
  }

  final _dio = Dio();

  void _onAddressUpdated(
    _AddressUpdatedEvent event,
    Emitter<SignalState> emit,
  ) {
    emit(state.copyWith(address: event.address));
  }

  Future<void> _onKeyPressed(
    _KeyPressedEvent event,
    Emitter<SignalState> emit,
  ) async {
    add(SignalEvent.multipleKeysPressed(keys: [event.key]));
  }

  Future<void> _onMultipleKeysPressed(
    _MultipleKeysPressedEvent event,
    Emitter<SignalState> emit,
  ) async {
    try {
      await _dio.post(
        state.address,
        data: {
          'keys': event.keys,
        },
      );
    } catch (e) {
      emit(state.copyWith(error: 'Ошибка при отправке: ${event.keys}'));
    } finally {
      emit(state.copyWith(error: ''));
    }
  }
}
