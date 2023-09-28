import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/keyboard/keyboard_bloc.dart';
import '../bloc/keyboard/keyboard_keys.dart';
import '../bloc/signal/signal_bloc.dart';

const _iconSize = 16.0;
const _keyHeight = 50.0;
const _keyWidth = 40.0;
const _keyMargin = 4.0;
const _highlightBG = Colors.white70;

class KeyboardControls extends StatelessWidget {
  const KeyboardControls({super.key});

  @override
  Widget build(BuildContext context) {
    final signalBloc = context.read<SignalBloc>();

    return BlocProvider(
      create: (context) => KeyboardBloc(signalBloc),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<KeyboardBloc>();

    return BlocBuilder<KeyboardBloc, KeyboardState>(
      builder: (context, state) {
        var row1 = 'qwertyuiop';
        var row2 = 'asdfghjkl';
        var row3 = 'zxcvbnm';

        if (state.shiftState != ShiftState.off) {
          row1 = row1.toUpperCase();
          row2 = row2.toUpperCase();
          row3 = row3.toUpperCase();
        }

        return Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: row1.split('').map(
                  (e) {
                    return KeyboardButton(
                      value: Text(e),
                      onPressed: () {
                        bloc.add(KeyboardEvent.textEdited(text: e));
                      },
                    );
                  },
                ).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: row2.split('').map(
                  (e) {
                    return KeyboardButton(
                      value: Text(e),
                      onPressed: () {
                        bloc.add(KeyboardEvent.textEdited(text: e));
                      },
                    );
                  },
                ).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KeyboardButton(
                    value: Icon(
                      state.shiftState == ShiftState.off
                          ? Icons.arrow_downward
                          : Icons.arrow_upward,
                      color: state.shiftState == ShiftState.permanent
                          ? Colors.white
                          : null,
                      size: _iconSize,
                    ),
                    background: state.shiftState == ShiftState.permanent
                        ? Colors.lightBlueAccent
                        : _highlightBG,
                    onPressed: () {
                      bloc.add(const KeyboardEvent.shirtPressed());
                    },
                  ),
                  ...row3.split('').map(
                    (e) {
                      return KeyboardButton(
                        value: Text(e),
                        onPressed: () {
                          bloc.add(KeyboardEvent.textEdited(text: e));
                        },
                      );
                    },
                  ),
                  KeyboardButton(
                    value: const Icon(
                      Icons.backspace,
                      size: _iconSize,
                    ),
                    background: _highlightBG,
                    onPressed: () {
                      bloc.add(
                        const KeyboardEvent.textEdited(
                          text: KeyboardKeys.backspace,
                        ),
                      );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: _keyMargin,
                  ),
                  KeyboardButton(
                    value: const Text(','),
                    onPressed: () {
                      bloc.add(const KeyboardEvent.textEdited(text: ','));
                    },
                  ),
                  Expanded(
                    child: KeyboardButton(
                      value: const Text('Пробел'),
                      size: const Size.fromHeight(_keyHeight),
                      onPressed: () {
                        bloc.add(const KeyboardEvent.textEdited(text: ' '));
                      },
                    ),
                  ),
                  KeyboardButton(
                    value: const Text('.'),
                    onPressed: () {
                      bloc.add(const KeyboardEvent.textEdited(text: '.'));
                    },
                  ),
                  KeyboardButton(
                    value: const Text('OK'),
                    background: _highlightBG,
                    onPressed: () {
                      bloc.add(
                        const KeyboardEvent.textEdited(
                          text: KeyboardKeys.enter,
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: _keyMargin,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class KeyboardButton extends StatelessWidget {
  const KeyboardButton({
    super.key,
    required this.value,
    required this.onPressed,
    this.background,
    this.size,
  });

  final Widget value;
  final VoidCallback onPressed;
  final Color? background;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    late final double height;
    late final double width;

    final s = size;
    if (s != null) {
      height = s.height;
      width = s.width;
    } else {
      height = _keyHeight;
      width = _keyWidth;
    }

    return SizedBox(
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(_keyMargin),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: background ?? Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black45,
                spreadRadius: .2,
                blurRadius: 0.1,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(4),
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: onPressed,
              child: Align(
                alignment: Alignment.center,
                child: value,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
