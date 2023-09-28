import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shortcut_event.dart';
part 'shortcut_state.dart';
part 'shortcut_bloc.freezed.dart';

class ShortcutBloc extends Bloc<ShortcutEvent, ShortcutState> {
  ShortcutBloc() : super(const ShortcutState()) {
    on<ShortcutEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
