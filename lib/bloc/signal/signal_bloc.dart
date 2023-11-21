import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'signal_event.dart';

part 'signal_state.dart';

part 'signal_bloc.freezed.dart';

const _timeout = Duration(seconds: 5);
const _addressKey = 'address';

class SignalBloc extends Bloc<SignalEvent, SignalState> {
  SignalBloc() : super(const SignalState()) {
    on<_InitEvent>(_init);
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

  Future<SharedPreferences> get _sharedPrefs => SharedPreferences.getInstance();

  Future<void> _init(
    _InitEvent event,
    Emitter<SignalState> emit,
  ) async {
    try {
      final prefs = await _sharedPrefs;
      final address = prefs.getString(_addressKey);

      if (address != null) {
        emit(state.copyWith(address: address));
      }
    } catch (e) {
      emit(state.copyWith(error: 'Не удалось загрузить адрес'));
    } finally {
      emit(state.copyWith(error: ''));
    }
  }

  Future<void> _onAddressUpdated(
    _AddressUpdatedEvent event,
    Emitter<SignalState> emit,
  ) async {
    emit(state.copyWith(address: event.address));

    try {
      final prefs = await _sharedPrefs;
      await prefs.setString(_addressKey, event.address);
    } catch (e) {
      emit(state.copyWith(error: 'Не удалось сохранить адрес'));
    } finally {
      emit(state.copyWith(error: ''));
    }
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
