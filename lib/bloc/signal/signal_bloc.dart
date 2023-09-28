import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signal_event.dart';

part 'signal_state.dart';

part 'signal_bloc.freezed.dart';

const _timeout = Duration(seconds: 5);

class SignalBloc extends Bloc<SignalEvent, SignalState> {
  SignalBloc() : super(const SignalState()) {
    on<_AddressUpdatedEvent>(_onAddressUpdated);
    on<_KeyPressedEvent>(_onKeyPressed);
    on<_MultipleKeysPressedEvent>(_onMultipleKeysPressed);
    on<_MouseMovedEvent>(_onMouseMoved);
    on<_MousePressedEvent>(_onMousePressed);
  }

  final _dio = Dio(
    BaseOptions(
      connectTimeout: _timeout,
      receiveTimeout: _timeout,
      sendTimeout: _timeout,
    ),
  );

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
        _getUrl(),
        data: {
          'keys': event.keys,
        },
      );
    } catch (e) {
      emit(state.copyWith(error: 'Ошибка при нажатии: ${event.keys}'));
    } finally {
      emit(state.copyWith(error: ''));
    }
  }

  Future<void> _onMouseMoved(
    _MouseMovedEvent event,
    Emitter<SignalState> emit,
  ) async {
    try {
      await _dio.post(
        _getUrl(),
        data: {
          'mouse': {
            'dx': event.dx,
            'dy': event.dy,
          },
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          error: 'Ошибка при передвижении мышки: ${event.dx}, ${event.dy}',
        ),
      );
    } finally {
      emit(state.copyWith(error: ''));
    }
  }

  Future<void> _onMousePressed(
    _MousePressedEvent event,
    Emitter<SignalState> emit,
  ) async {
    try {
      await _dio.post(
        _getUrl(),
        data: {
          'mouse': {
            'click': event.button,
          },
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          error: 'Ошибка при нажатии мышки: ${event.button}',
        ),
      );
    } finally {
      emit(state.copyWith(error: ''));
    }
  }

  String _getUrl() {
    return 'http://${state.address}';
  }
}
