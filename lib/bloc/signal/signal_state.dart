part of 'signal_bloc.dart';

@freezed
class SignalState with _$SignalState {
  const factory SignalState({
    @Default('') String address,
    @Default('') String error,
  }) = _SignalState;
}
