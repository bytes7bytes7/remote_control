import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/keyboard/keyboard_bloc.dart';
import '../bloc/signal/signal_bloc.dart';

final GlobalKey<EditableTextState> editableTextKey =
    GlobalKey<EditableTextState>();

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
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 'qwertyuiop'.split('').map(
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
              children: 'asdfghjkl'.split('').map(
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
                ...'zxcvbnm'.split('').map(
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
                    size: 16,
                  ),
                  background: Colors.white70,
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
          ],
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
  });

  final Widget value;
  final VoidCallback onPressed;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 40,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: background ?? Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black45,
                spreadRadius: .1,
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
