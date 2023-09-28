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
              children: 'qwertyuiop'.split('').map(
                (e) {
                  return Expanded(
                    child: KeyboardButton(
                      value: e,
                      onPressed: () {
                        bloc.add(KeyboardEvent.textEdited(text: e));
                      },
                    ),
                  );
                },
              ).toList(),
            ),
            Row(
              children: 'asdfghjkl'.split('').map(
                (e) {
                  return Expanded(
                    child: KeyboardButton(
                      value: e,
                      onPressed: () {
                        bloc.add(KeyboardEvent.textEdited(text: e));
                      },
                    ),
                  );
                },
              ).toList(),
            ),
            Row(
              children: 'zxcvbnm'.split('').map(
                (e) {
                  return Expanded(
                    child: KeyboardButton(
                      value: e,
                      onPressed: () {
                        bloc.add(KeyboardEvent.textEdited(text: e));
                      },
                    ),
                  );
                },
              ).toList(),
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
  });

  final String value;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
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
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Text(
                value,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
