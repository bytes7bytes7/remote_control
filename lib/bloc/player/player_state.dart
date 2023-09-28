part of 'player_bloc.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    @Default('') String error,
  }) = _PlayerState;
}
